import { Editor } from '@app/types'
import React, { isValidElement, memo, ReactNode } from 'react'
import type { BlockFormatInterface } from '../hooks'
import { DeletedBlock } from './DeletedBlock'
import { NoPermissionBlock } from './NoPermisionBlock'

import { UnknownBlock } from './UnknownBlock'
import { Blocks } from './utils'

export type BlockComponent<P = {}> = P & {
  meta: {
    hasChildren?: boolean
    isText?: boolean
    supportBlockFormat?: boolean
    needParentType?: boolean
    forwardRef?: boolean
    isQuestion?: boolean
    isResizeable?: boolean
    isDataAsset?: boolean
    isExecuteable?: boolean
    isQuery?: boolean
  }
}

const _BlockInner: React.ForwardRefRenderFunction<
  any,
  {
    block: Editor.Block
    children?: ReactNode
    blockFormat?: BlockFormatInterface
    parentType?: Editor.BlockType
  }
> = ({ block, children, blockFormat, parentType }, ref) => {
  if (block.alive === false) {
    return <DeletedBlock block={block}></DeletedBlock>
  }
  // if (block.permissions?.length === 0) {
  //   return <NoPermissionBlock block={block} />
  // }

  const Component = Blocks[block.type] as BlockComponent<ReactFCWithChildren>
  if (!Component || isValidElement(Component)) {
    return <UnknownBlock block={block}></UnknownBlock>
  }

  return (
    <Component
      ref={Component.meta.forwardRef ? ref : undefined}
      block={block}
      blockFormat={blockFormat}
      parentType={parentType}
    >
      {Component.meta.hasChildren && children}
    </Component>
  )
}

export const BlockInner = memo(React.forwardRef(_BlockInner), (prev, next) => {
  return (
    prev.block.version === next.block.version &&
    prev.blockFormat === next.blockFormat &&
    prev.parentType === next.parentType
  )
})
