<Container
  id="container1"
  _gap="0px"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <Header>
    <Text
      id="containerTitle1"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="c8c87" viewKey="View 1">
    <Text
      id="text1"
      value="##### Search Global Parameter"
      verticalAlign="center"
    />
    <Button
      id="addGlobalParamButton"
      style={{
        border: "warning",
        label: "warning",
        hoverBackground: "rgba(225, 100, 40, 0.2)",
      }}
      text="New Global Paramater"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ map: { value: '[\n  { \n    "default": "value"\n  }\n]' } }}
        pluginId="contextId"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ map: { value: '[\n  { \n    "default": "value"\n  }\n]' } }}
        pluginId="mtconfig"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ map: { value: '[\n  { \n    "default": "value"\n  }\n]' } }}
        pluginId="prof"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ map: { value: '[\n  { \n    "default": "value"\n  }\n]' } }}
        pluginId="sfid"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ map: { value: "All" } }}
        pluginId="tabs1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Select
      id="appNameSelect"
      data="{{ getDistinctAppName.data }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      labels="{{ item.app_name }}"
      overlayMaxHeight={375}
      placeholder="App Name"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.app_name }}"
    />
    <Select
      id="platformSelect"
      data="{{ getDistinctPlatform.data }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Platform"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.platform }}"
    />
    <Select
      id="streamTypeSelect"
      data="{{ getDistinctStreamType.data }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Stream Type"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.stream_type }}"
    />
    <Select
      id="variantIdSelect"
      data="{{ getDistinctVariantId.data }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Variant Id"
      showClear={true}
      showSelectionIndicator={true}
      value=""
      values="{{ item.variant_id }}"
    >
      <Option id="155a8" value="Option 1" />
      <Option id="20317" value="Option 2" />
      <Option id="ae528" value="Option 3" />
    </Select>
  </View>
</Container>
