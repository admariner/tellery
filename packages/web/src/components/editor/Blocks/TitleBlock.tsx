import { Editor } from '@app/types'
import React from 'react'
import { ContentEditable } from '../BlockBase/ContentEditable'
import { useBlockBehavior } from '../hooks/useBlockBehavior'
import { BlockComponent } from './utils'

const _TitleBlock: BlockComponent<ReactFCWithChildren<{ block: Editor.BaseBlock }>> = (props: { block: Editor.BaseBlock }) => {
  const { readonly } = useBlockBehavior()

  const { block } = props
  if (!block) return null
  return (
    block && (
      <ContentEditable
        disableReferenceDropdown
        disableSlashCommand
        disableTextToolBar
        block={block}
        placeHolderStrategy="always"
        placeHolderText="Untitled"
        readonly={readonly}
      />
    )
  )
}

_TitleBlock.meta = {
  isText: true,
  hasChildren: true
}

export const TitleBlock = _TitleBlock
