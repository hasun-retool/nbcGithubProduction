<Screen
  id="globalParams"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title={null}
  urlSlug=""
>
  <Folder id="gbQueries">
    <SqlQueryUnified
      id="getGlobalParams"
      isMultiplayerEdited={false}
      query={include("../lib/getGlobalParams.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="ab2312cc-2d5b-4f56-94d4-65e76a5ca6e3"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="createGlobalParam"
      actionType="INSERT"
      changeset={
        '[{"key":"app_name","value":"{{ select6.value}}"},{"key":"platform","value":"{{ select7.value }}"},{"key":"stream_type","value":"{{ select4.value }}"},{"key":"variant_id","value":"{{ textInput2.value }}"},{"key":"afid","value":"{{  textInput3.value }}"},{"key":"csid","value":"{{  textInput5.value }}"},{"key":"contextid","value":"{{ jsonEditor1.value }}"},{"key":"sfid","value":"{{ jsonEditor2.value }}"},{"key":"metr","value":"{{ numberInput1.value }}"},{"key":"resp","value":"{{ textInput7.value }}"}]'
      }
      editorMode="gui"
      enableTransformer={true}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      resourceDisplayName="retool_db"
      resourceName="ab2312cc-2d5b-4f56-94d4-65e76a5ca6e3"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      showUpdateSetValueDynamicallyToggle={false}
      tableName="global_params"
      updateSetValueDynamically={true}
    >
      <Event
        event="success"
        method="confetti"
        params={{}}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{}}
        pluginId="getGlobalParams"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="hide"
        params={{ map: { options: { block: "nearest", behavior: "auto" } } }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getDistinctAppName"
      isMultiplayerEdited={false}
      query={include("../lib/getDistinctAppName.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="ab2312cc-2d5b-4f56-94d4-65e76a5ca6e3"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getDistinctPlatform"
      query={include("../lib/getDistinctPlatform.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="ab2312cc-2d5b-4f56-94d4-65e76a5ca6e3"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getDistinctStreamType"
      isMultiplayerEdited={false}
      query={include("../lib/getDistinctStreamType.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="ab2312cc-2d5b-4f56-94d4-65e76a5ca6e3"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getDistinctVariantId"
      query={include("../lib/getDistinctVariantId.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="ab2312cc-2d5b-4f56-94d4-65e76a5ca6e3"
      warningCodes={[]}
    />
  </Folder>
  <Folder id="js">
    <Function
      id="deDeupKeysValidation"
      funcBody={include("../lib/deDeupKeysValidation.js", "string")}
    />
    <JavascriptQuery
      id="mapEditFields"
      notificationDuration={4.5}
      query={include("../lib/mapEditFields.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    >
      <Event
        event="success"
        method="setValue"
        params={{
          map: { value: "{{ mapEditFields.data.transformedMtconfig }}" },
        }}
        pluginId="mtconfig"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="setValue"
        params={{ map: { value: "{{ mapEditFields.data.transformedSfid }}" } }}
        pluginId="sfid"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="setValue"
        params={{
          map: { value: "{{ mapEditFields.data.transformedContext }}" },
        }}
        pluginId="contextId"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="setValue"
        params={{ map: { value: "{{ mapEditFields.data.transformedProf }}" } }}
        pluginId="prof"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <Function id="flags" funcBody={include("../lib/flags.js", "string")} />
    <Function
      id="platforms"
      funcBody={include("../lib/platforms.js", "string")}
    />
    <Function
      id="contextIdPreview"
      funcBody={include("../lib/contextIdPreview.js", "string")}
    />
    <Function
      id="sfidPreview"
      funcBody={include("../lib/sfidPreview.js", "string")}
    />
    <Function
      id="mtconfigPreview"
      funcBody={include("../lib/mtconfigPreview.js", "string")}
    />
    <Function
      id="profPreview"
      funcBody={include("../lib/profPreview.js", "string")}
    />
  </Folder>
  <Folder id="varaiables">
    <State
      id="keyDictionary"
      value={
        '[\n{ \ncategory: "sfid",\nkey: "af",\nvalues: [ "15741628", "15741629", "15741630" ],\navailableApps: [ "nbc", "peacock", "nbcolympics", "nowott", "onapp" ]\n},\n{ \ncategory: "sfid",\nkey: "default",\nvalues: [ "15339180", "15339181", "15339182", "15339183", "15339184", "15339185" ],\navailableApps: [ "nbc", "peacock", "nbcolympics", "nowott", "onapp" ]\n},\n{ \ncategory: "sfid",\nkey: "free",\nvalues: [ "345432", "345433", "345434", "345435", "345436", "345437" ],\navailableApps: [ "nbc", "peacock", "nbcolympics", "nowott", "onapp" ]\n},\n{ \ncategory: "sfid",\nkey: "kids",\nvalues: [ "15741622", "15741623", "15741624", "15741625", "15741626", "15741627", "15741628", "15741629", "15741630" ],\navailableApps: [ "nbc", "nbcolympics", "peacock", "oneapp" ]\n}, \n{ \ncategory: "sfid",\nkey: "kids_af",\nvalues: [ "675676" ],\navailableApps: [ "nbc", "nbcolympics", "peacock", "oneapp" ]\n}, \n{ \ncategory: "sfid",\nkey: "kids_free",\nvalues: [ "2342345", "2342346" ],\navailableApps: [ "nbc", "peacock", "nbcolympics", "nowott", "onapp" ]\n}, \n{ \ncategory: "sfid",\nkey: "kids_premium",\nvalues: [ "456577" ],\navailableApps: [ "nbc", "nbcolympics", "peacock", "oneapp" ]\n},\n{ \ncategory: "sfid",\nkey: "premium",\nvalues: [ "234234" ],\navailableApps: [ "nbc", "peacock", "nbcolympics", "nowott", "onapp" ]\n},\n{ \ncategory: "mtconfig",\nkey: "4k_dv",\nvalues: [ "peacock-cmaf-dash-vod-2s-roku-4k-dv" ],\navailableApps: [ "peacock" ],\nplatform: "roku",\nstreamType: "VOD",\nvariant: "mediataior"\n},\n{ \ncategory: "mtconfig",\nkey: "4k_hdr10",\nvalues: [ "peacock-cmaf-dash-vod-2s-roku-4k-dhr10" ],\navailableApps: [ "peacock" ],\nplatform: "roku",\nstreamType: "VOD",\nvariant: "mediataior"\n},\n{ \ncategory: "mtconfig",\nkey: "4k_sdr",\nvalues: [ "peacock-cmaf-dash-vod-2s-roku-4k-sdr" ],\navailableApps: [ "peacock" ],\nplatform: "roku",\nstreamType: "VOD",\nvariant: "mediataior"\n},\n{ \ncategory: "mtconfig",\nkey: "default",\nvalues: [ "peacock-cmaf-dash-vod-2s-roku" ],\navailableApps: [ "peacock" ],\nplatform: "roku",\nstreamType: "VOD",\nvariant: "mediataior"\n},\n{ \ncategory: "mtconfig",\nkey: "harmonic",\nvalues: [ "peacock-cmaf-dash-vod-4s-roku" ],\navailableApps: [ "peacock" ],\nplatform: "roku",\nstreamType: "VOD",\nvariant: "mediataior"\n},\n{ \ncategory: "prof",\nkey: "default",\nvalues: [ "_default_x1_prof", "_default_x2_prof", "_default_x3_prof", "_default_xx_prof" ],\navailableApps: [ "nbc", "peacock", "nbcolympics", "nowott", "onapp" ],\nplatform: "roku"\n},\n{ \ncategory: "prof",\nkey: "harmonic",\nvalues: [ "_harmonic_x1_prof", "_harmonic_x2_prof", "_harmonic_x3_prof", "_harmonic_xx_prof" ],\navailableApps: [ "nbc", "peacock", "nbcolympics", "nowott", "onapp" ],\nplatform: "roku"\n},\n{ \ncategory: "prof",\nkey: "isp",\nvalues: [ "_isp_x1_prof", "_isp_x2_prof","_isp_x3_prof", "_isp_xx_prof" ],\navailableApps: [ "nbc", "peacock", "nbcolympics", "nowott", "onapp" ],\nplatform: "roku"\n}\n]'
      }
    />
    <State id="contextId" value={'[\n  { \n    "default": "value"\n  }\n]'} />
    <State id="sfid" value={'[\n  { \n    "default": "value"\n  }\n]'} />
    <State id="afid" value={'[\n  { \n    "default": "value"\n  }\n]'} />
    <State id="mtconfig" value={'[\n  { \n    "default": "value"\n  }\n]'} />
    <State id="prof" value={'[\n  { \n    "default": "value"\n  }\n]'} />
  </Folder>
  <Include src="./drawerFrame1.rsx" />
  <Include src="./modalFrame1.rsx" />
  <Include src="./newGlobalParamDrawer.rsx" />
  <Frame
    id="$main5"
    enableFullBleed={true}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="container2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      padding="12px"
      showBody={true}
      style={{ ordered: [{ background: "canvas" }] }}
    >
      <Header>
        <Text
          id="containerTitle2"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="edca6" viewKey="View 1">
        <Include src="./container1.rsx" />
        <Include src="./tabbedContainer1.rsx" />
      </View>
    </Container>
  </Frame>
</Screen>
