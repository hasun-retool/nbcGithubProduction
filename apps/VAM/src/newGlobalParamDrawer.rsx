<DrawerFrame
  id="newGlobalParamDrawer"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  width="medium"
>
  <Header>
    <Button
      id="drawerCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="newGlobalParamDrawer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="drawerTitle1"
      value="#### New Global Param"
      verticalAlign="center"
    />
  </Header>
  <Body>
    <Select
      id="select1"
      emptyMessage="No options"
      itemMode="static"
      label="App Name"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showSelectionIndicator={true}
    >
      <Option id="96af4" value="Option 1" />
      <Option id="2bb1a" value="Option 2" />
      <Option id="97fdb" value="Option 3" />
    </Select>
    <Select
      id="select2"
      emptyMessage="No options"
      itemMode="static"
      label="Platform"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showSelectionIndicator={true}
    >
      <Option id="96af4" value="Option 1" />
      <Option id="2bb1a" value="Option 2" />
      <Option id="97fdb" value="Option 3" />
    </Select>
    <Select
      id="select3"
      emptyMessage="No options"
      itemMode="static"
      label="Stream Type"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showSelectionIndicator={true}
    >
      <Option id="96af4" value="Option 1" />
      <Option id="2bb1a" value="Option 2" />
      <Option id="97fdb" value="Option 3" />
    </Select>
    <TextInput
      id="textInput1"
      label="Variant Id"
      labelPosition="top"
      placeholder="Optional"
    />
  </Body>
  <Footer>
    <Button
      id="button2"
      style={{ ordered: [{ background: "#b1241f" }, { border: "#b1241f" }] }}
      text="Create! "
    />
  </Footer>
</DrawerFrame>
