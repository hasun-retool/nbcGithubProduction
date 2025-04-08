<DrawerFrame
  id="drawerFrame2"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  width="medium"
>
  <Header>
    <Text
      id="drawerTitle3"
      value="### Create Ad Line Config"
      verticalAlign="center"
    />
    <Button
      id="drawerCloseButton3"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="drawerFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <TextInput
      id="textInput14"
      label="Config Name"
      labelPosition="top"
      placeholder="Enter value"
    />
    <SegmentedControl
      id="segmentedControl5"
      itemMode="static"
      label="Status"
      labelPosition="top"
      paddingType="spacious"
      style={{ map: { checkedLabel: "success" } }}
      value="{{ self.values[0] }}"
    >
      <Option id="5fc25" label="Active" value="active" />
      <Option id="d3b6c" label="Inactive" value="inactive" />
    </SegmentedControl>
    <TextInput
      id="textInput15"
      label="Version"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextArea
      id="textArea2"
      autoResize={true}
      label="Video Source Content"
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
    />
    <TextArea
      id="textArea3"
      autoResize={true}
      label="Base URL"
      labelPosition="top"
      minLines="2"
      placeholder="Enter value"
      value="https://[player_parmas.adServerFQDN/ad/g/1"
    />
    <Container
      id="group19"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "tokens/d5710d2b" } }}
    >
      <View id="a8803" viewKey="View 1">
        <Text
          id="text49"
          style={{}}
          value="**Parameter Name**"
          verticalAlign="center"
        />
        <Text
          id="text50"
          style={{}}
          value="**Placeholder Value**"
          verticalAlign="center"
        />
        <Icon
          id="icon16"
          horizontalAlign="right"
          icon="bold/interface-add-circle"
          style={{}}
        >
          <Event
            event="click"
            method="setValue"
            params={{
              map: {
                value: '{{ newParams.value.concat({"name":"","value": "" }) }}',
              },
            }}
            pluginId="newParams"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Icon>
      </View>
    </Container>
    <ListViewBeta
      id="listView7"
      _primaryKeys="{{ i }}"
      data="{{ newParams.value }}"
      enableInstanceValues={true}
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Select
        id="select31"
        emptyMessage="No options"
        itemMode="static"
        label=""
        labelPosition="top"
        overlayMaxHeight={375}
        placeholder="Select a param"
        showSelectionIndicator={true}
      >
        <Option id="b3aff" value="nw" />
        <Option id="57d4d" value="mode" />
        <Option id="fcb37" value="prof" />
        <Option id="0b40c" disabled={false} hidden={false} value="resp" />
        <Option id="8ce22" disabled={false} hidden={false} value="flag" />
        <Option id="fb0c9" disabled={false} hidden={false} value="crtp" />
        <Option id="4765e" disabled={false} hidden={false} value="csid" />
        <Option id="66870" disabled={false} hidden={false} value="caid" />
        <Option id="13a3f" disabled={false} hidden={false} value="vdur" />
        <Option id="9b879" disabled={false} hidden={false} value="pvrn" />
        <Option id="09fd0" disabled={false} hidden={false} value="metr" />
        <Option id="5df24" disabled={false} hidden={false} value="afid" />
        <Option id="19635" disabled={false} hidden={false} value="am_bc" />
        <Option id="427a3" disabled={false} hidden={false} value="sfid" />
        <Option id="98813" disabled={false} hidden={false} value="vip" />
        <Option id="5847a" disabled={false} hidden={false} value="cana" />
        <Option id="2a836" disabled={false} hidden={false} value="_fw_is_lat" />
        <Option id="3afb8" disabled={false} hidden={false} value="_fw_gdpr" />
        <Option
          id="76896"
          disabled={false}
          hidden={false}
          value="_fw_gdpr_consent"
        />
        <Option id="5075d" disabled={false} hidden={false} value="am_buildv" />
        <Option id="6082a" disabled={false} hidden={false} value="am_playerv" />
        <Option id="a534e" disabled={false} hidden={false} value="am_cdn" />
        <Option id="ebc79" disabled={false} hidden={false} value="am_sst" />
        <Option id="2b317" disabled={false} hidden={false} value="am_brand" />
        <Option id="d1742" disabled={false} hidden={false} value="am_pub" />
        <Option
          id="b4759"
          disabled={false}
          hidden={false}
          value="_fw_player_wdith"
        />
        <Option id="e4fc0" disabled={false} hidden={false} value="w" />
        <Option id="3a6d1" disabled={false} hidden={false} value="slau" />
        <Option id="1b5ed" disabled={false} hidden={false} value="prct" />
        <Event
          event="change"
          method="setIn"
          params={{ keyPath: '[{{ i }}, "name"]', value: "{{ self.value }}" }}
          pluginId="newParams"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="change"
          method="trigger"
          params={{}}
          pluginId="concatParams"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Select>
      <TextInput
        id="textInput17"
        label=""
        labelPosition="top"
        placeholder="[Enter_value]"
      >
        <Event
          event="change"
          method="setIn"
          params={{ keyPath: '[{{ i }}, "value"]', value: "{{ self.value }}" }}
          pluginId="newParams"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="submit"
          method="trigger"
          params={{}}
          pluginId="concatParams"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </TextInput>
    </ListViewBeta>
    <Button
      id="button25"
      style={{
        border: "warning",
        label: "warning",
        hoverBackground: "rgba(225, 100, 40, 0.1)",
      }}
      text="Save"
    />
  </Body>
</DrawerFrame>
