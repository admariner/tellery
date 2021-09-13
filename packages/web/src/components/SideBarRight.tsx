import { ThemingVariables } from '@app/styles'
import { css } from '@emotion/css'
import { Tab, TabList, TabPanel, useTabState } from 'reakit/Tab'
import React, { useEffect, useMemo } from 'react'
import { useTranslation } from 'react-i18next'
import { SideBarDataAssets } from './SideBarDataAssets'
import { useSideBarQuestionEditorState } from '../hooks/useSideBarQuestionEditor'
import SideBarVisualizationConfig from './SideBarVisualizationConfig'
import { SideBarTabHeader, StyledTabPanel } from './v11n/components/Tab'
import { isVisualizationBlock } from './editor/Blocks/utils'
import { useBlock } from '@app/hooks/api'

export const SideBarRight: React.FC<{ storyId: string }> = ({ storyId }) => {
  const { t } = useTranslation()
  const [sideBarEditorState] = useSideBarQuestionEditorState(storyId)
  const currentBlockId = sideBarEditorState?.blockId ?? storyId
  const tab = useTabState()
  const { setSelectedId } = tab
  const currentBlock = useBlock(currentBlockId)
  const showVisualizationTab = useMemo(() => {
    return currentBlock.data && isVisualizationBlock(currentBlock.data.type)
  }, [currentBlock.data])
  useEffect(() => {
    setSelectedId(sideBarEditorState?.activeTab || 'Data Assets')
  }, [setSelectedId, sideBarEditorState])

  return (
    <div
      className={css`
        height: 100%;
        overflow-y: hidden;
        border-left: 1px solid #dedede;
        display: flex;
        flex-direction: column;
      `}
    >
      <TabList
        {...tab}
        className={css`
          border-bottom: solid 1px ${ThemingVariables.colors.gray[1]};
          overflow-x: auto;
          white-space: nowrap;
          padding-right: 16px;
        `}
      >
        <Tab as={SideBarTabHeader} {...tab} id="Data Assets" selected={tab.selectedId === 'Data Assets'}>
          {t`Data Assets`}
        </Tab>
        <Tab
          as={SideBarTabHeader}
          {...tab}
          id="Visualization"
          selected={tab.selectedId === 'Visualization'}
          disabled={!showVisualizationTab}
        >
          {t`Visualization`}
        </Tab>
      </TabList>
      <div
        className={css`
          flex: 1;
          overflow-y: hidden;
        `}
      >
        <TabPanel as={StyledTabPanel} {...tab}>
          <React.Suspense fallback={<></>}>
            <SideBarDataAssets storyId={storyId} />
          </React.Suspense>
        </TabPanel>
        <TabPanel as={StyledTabPanel} {...tab}>
          <React.Suspense fallback={<></>}>
            {sideBarEditorState?.blockId && <SideBarVisualizationConfig storyId={storyId} blockId={currentBlockId} />}
          </React.Suspense>
        </TabPanel>
      </div>
    </div>
  )
}
