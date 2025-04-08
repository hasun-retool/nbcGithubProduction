<Screen
  id="adLines"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title={null}
  urlSlug=""
>
  <Folder id="dbQueries">
    <SqlQueryUnified
      id="addAdLineConfig"
      actionType="INSERT"
      changeset={
        '[{"key":"config_name","value":"{{ textInput14.value }}"},{"key":"version","value":"{{ textInput15.value }}"},{"key":"video_source_content","value":"{{ textArea2.value }}"},{"key":"url","value":"{{ textArea3.value }}"},{"key":"status","value":"{{ segmentedControl5.selectedItem.value }}"}]'
      }
      editorMode="gui"
      notificationDuration={4.5}
      resourceDisplayName="retool_db"
      resourceName="50fbca9c-3d8d-4dd4-a7a6-50e25c4c1b2d"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      showUpdateSetValueDynamicallyToggle={false}
      tableName="ad_lines_config"
      updateSetValueDynamically={true}
    >
      <Event
        event="success"
        method="trigger"
        params={{}}
        pluginId="getAdLines"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updateAdLines"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"video_source_content","value":"{{ textInput10.value }}"},{"key":"url","value":"{{ textArea1.value }}"}]'
      }
      editorMode="gui"
      filterBy={
        '[{"key":"id","value":"{{ select8.selectedItem.id }}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      resourceDisplayName="retool_db"
      resourceName="50fbca9c-3d8d-4dd4-a7a6-50e25c4c1b2d"
      runWhenModelUpdates={false}
      tableName="ad_lines_config"
    >
      <Event
        event="success"
        method="trigger"
        params={{}}
        pluginId="getAdLinesByConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="setValue"
        params={{ map: { value: "false" } }}
        pluginId="changeDetection"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getAdLinesByConfig"
      isMultiplayerEdited={false}
      query={include("../lib/getAdLinesByConfig.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="50fbca9c-3d8d-4dd4-a7a6-50e25c4c1b2d"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getAdLines"
      isMultiplayerEdited={false}
      query={include("../lib/getAdLines.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="50fbca9c-3d8d-4dd4-a7a6-50e25c4c1b2d"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="updateAdLineStatus"
      notificationDuration={4.5}
      resourceDisplayName="retool_db"
      resourceName="50fbca9c-3d8d-4dd4-a7a6-50e25c4c1b2d"
      showSuccessToaster={false}
      showUpdateSetValueDynamicallyToggle={false}
      updateSetValueDynamically={true}
    />
  </Folder>
  <Folder id="js">
    <JavascriptQuery
      id="concatParams"
      notificationDuration={4.5}
      query={include("../lib/concatParams.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <Function
      id="urlValidator"
      funcBody={include("../lib/urlValidator.js", "string")}
    />
  </Folder>
  <Folder id="variables">
    <State id="changeDetection" value="false" />
    <State id="newParams" value={'[\n{\n"name": "",\n"value": ""\n}\n]'} />
  </Folder>
  <Include src="./drawerFrame2.rsx" />
  <Frame
    id="$main2"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Include src="./container6.rsx" />
  </Frame>
</Screen>
