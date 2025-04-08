<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="large"
>
  <Header>
    <Button
      id="modalCloseButton1"
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
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="modalTitle1"
      value="#### New Global Param"
      verticalAlign="center"
    />
  </Header>
  <Body>
    <Select
      id="select6"
      data="{{ getDistinctAppName.data }}"
      emptyMessage="No options"
      label="App Name"
      labels="{{ item.app_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.app_name }}"
    />
    <Text
      id="text2"
      style={{ ordered: [{ color: "highlight" }] }}
      value="##### General"
      verticalAlign="center"
    />
    <Icon
      id="icon12"
      icon="bold/interface-add-circle"
      style={{ map: { color: "danger" } }}
    />
    <Select
      id="select7"
      data="{{ getDistinctPlatform.data }}"
      emptyMessage="No options"
      label="Platform"
      labels="{{ item.platform }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.platform }}"
    />
    <Select
      id="select4"
      data="{{ getDistinctStreamType.data }}"
      emptyMessage="No options"
      label="Stream Type"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.stream_type }}"
    />
    <Text
      id="text3"
      style={{ ordered: [{ color: "rgba(139, 139, 139, 1)" }] }}
      value="Provide details for your new global parameter."
      verticalAlign="center"
    />
    <TextInput id="textInput2" label="Variant Id" placeholder="Optional" />
    <Icon
      id="icon13"
      icon="bold/interface-add-circle"
      style={{ map: { color: "danger" } }}
    />
    <Icon
      id="icon14"
      icon="bold/interface-add-circle"
      style={{ map: { color: "danger" } }}
    />
    <Icon
      id="icon15"
      icon="bold/interface-add-circle"
      style={{ map: { color: "danger" } }}
    />
    <Divider id="divider1" />
    <Text
      id="text4"
      style={{ ordered: [{ color: "danger" }] }}
      value="##### Identifers"
      verticalAlign="center"
    />
    <TextInput
      id="textInput3"
      label="afid"
      labelWidth="22"
      placeholder="default"
    />
    <TextInput
      id="textInput5"
      label="csid"
      labelWidth="22"
      placeholder="default"
    />
    <Text id="text11" value="**contextId**" verticalAlign="center" />
    <Text
      id="text5"
      style={{ ordered: [{ color: "#8b8b8b" }] }}
      value="This category contains unique values used to identify content, sources, and context across systems."
      verticalAlign="center"
    />
    <Container
      id="group2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "tokens/d5710d2b" } }}
    >
      <View id="a8803" viewKey="View 1">
        <Text id="text16" style={{}} value="**Key**" verticalAlign="center" />
        <Text id="text17" style={{}} value="**Value**" verticalAlign="center" />
        <Icon
          id="icon1"
          horizontalAlign="right"
          icon="bold/interface-add-circle"
          style={{}}
        >
          <Event
            event="click"
            method="setValue"
            params={{
              map: { value: '{{ contextId.value.concat({"key":""}) }}' },
            }}
            pluginId="contextId"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Icon>
      </View>
    </Container>
    <ListViewBeta
      id="contextIdListView"
      _primaryKeys=""
      data="{{ contextId.value }}"
      enableInstanceValues={true}
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Container
        id="group1"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        padding="0"
        showBody={true}
        showBorder={false}
        style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
      >
        <View id="fb848" viewKey="View 1">
          <TextInput
            id="key"
            label=""
            labelPosition="top"
            placeholder="key"
            value="{{ Object.keys(item)[0] }}"
          >
            <Event
              event="change"
              method="setIn"
              params={{
                keyPath: "[{{ i }}]",
                value: "{ {{ self.value }}: {{ Object.values(item)[0] }} }",
              }}
              pluginId="contextId"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </TextInput>
          <TextInput
            id="value"
            label=""
            labelPosition="top"
            placeholder="Value"
            value="{{ Object.values(item)[0] }}"
          >
            <Event
              event="change"
              method="setIn"
              params={{
                keyPath: "[{{ i }}, {{ Object.keys(item)[0] }}]",
                value: "{{ self.value }}",
              }}
              pluginId="contextId"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </TextInput>
          <Button
            id="button9"
            hidden="{{ group1.hovered === false }}"
            iconBefore="bold/interface-delete-bin-1"
            style={{
              label: "danger",
              border: "danger",
              hoverBackground: "rgba(180, 40, 70, 0.2)",
            }}
          >
            <Event
              event="click"
              method="setValue"
              params={{
                map: {
                  value: "{{ contextId.value.filter((_, idx) => idx !== i) }}",
                },
              }}
              pluginId="contextId"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
        </View>
      </Container>
    </ListViewBeta>
    <JSONEditor id="jsonEditor1" value="{{ contextIdPreview.value }}" />
    <Text id="text12" value="**sfid**" verticalAlign="center" />
    <JSONEditor id="jsonEditor2" value="{{ sfidPreview.value }}" />
    <Container
      id="group3"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "tokens/d5710d2b" } }}
    >
      <View id="a8803" viewKey="View 1">
        <Text id="text19" style={{}} value="**Key**" verticalAlign="center" />
        <Text id="text20" style={{}} value="**Value**" verticalAlign="center" />
        <Icon
          id="icon5"
          horizontalAlign="right"
          icon="bold/interface-add-circle"
          style={{}}
        >
          <Event
            event="click"
            method="setValue"
            params={{ map: { value: '{{ sfid.value.concat({"key":""}) }}' } }}
            pluginId="sfid"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Icon>
      </View>
    </Container>
    <ListViewBeta
      id="listView1"
      _primaryKeys="{{ i }}"
      data="{{ sfid.value }}"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Container
        id="group6"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        padding="0"
        showBody={true}
        showBorder={false}
        style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
      >
        <View id="a8803" viewKey="View 1">
          <Select
            id="select13"
            data={
              '{{ keyDictionary.value.filter ( obj => obj.category === "sfid" && obj.availableApps.includes(select6.selectedItem.app_name)) }}'
            }
            emptyMessage="No options"
            label=""
            labelPosition="top"
            labels="{{ item.key }}"
            overlayMaxHeight={375}
            placeholder="key"
            showSelectionIndicator={true}
            tooltipByIndex=""
            values="{{ item.key}}"
          >
            <Event
              event="change"
              method="setIn"
              params={{
                keyPath: "[{{ i }}]",
                value: "{ {{ self.value }}: {{ Object.values(item)[0] }} }",
              }}
              pluginId="sfid"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
          <Select
            id="select14"
            data="{{ select13.selectedItem.values }}"
            emptyMessage="No options"
            label=""
            labelPosition="top"
            overlayMaxHeight={375}
            placeholder="value"
            showSelectionIndicator={true}
            values="{{ item }}"
          >
            <Event
              event="change"
              method="setIn"
              params={{
                keyPath: "[{{ i }}, {{ Object.keys(item)[0] }}]",
                value: "{{ self.value }}",
              }}
              pluginId="sfid"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
          <Button
            id="button14"
            hidden="{{ group6.hovered === false }}"
            iconBefore="bold/interface-delete-bin-1"
            style={{
              label: "danger",
              border: "danger",
              hoverBackground: "rgba(180, 40, 70, 0.2)",
            }}
          >
            <Event
              event="click"
              method="setValue"
              params={{
                map: {
                  value: "{{ sfid.value.filter((_, idx) => idx !== i) }}",
                },
              }}
              pluginId="sfid"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
        </View>
      </Container>
    </ListViewBeta>
    <Divider id="divider2" />
    <Text
      id="text7"
      style={{ ordered: [{ color: "info" }] }}
      value="##### Metadata"
      verticalAlign="center"
    />
    <Multiselect
      id="multiselect1"
      data="{{ flags.value }}"
      emptyMessage="No options"
      label="flags"
      labels="{{ _.startCase(item) }}"
      labelWidth="21"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      values="{{ item }}"
      wrapTags={true}
    />
    <NumberInput
      id="numberInput1"
      currency="USD"
      inputValue={0}
      label="metr"
      placeholder="Enter value"
      showClear={true}
      value={0}
    />
    <TextInput
      id="textInput7"
      label="resp"
      placeholder="Enter value"
      showClear={true}
    />
    <Text
      id="text6"
      style={{ ordered: [{ color: "#8b8b8b" }] }}
      value="This section includes encoded parameters and numeric values that likely influence playback behavior, tracking, or system configurations."
      verticalAlign="center"
    />
    <Divider id="divider3" />
    <Text
      id="text8"
      style={{ ordered: [{ color: "success" }] }}
      value="##### Configuration"
      verticalAlign="center"
    />
    <SegmentedControl
      id="segmentedControl2"
      itemMode="static"
      label="dolby_atp"
      paddingType="spacious"
      style={{ map: { checkedLabel: "success" } }}
      value="{{ self.values[0] }}"
    >
      <Option id="ed1b8" value="On" />
      <Option id="2f1bc" value="Disabled" />
    </SegmentedControl>
    <Text
      id="text9"
      style={{ ordered: [{ color: "#8b8b8b" }] }}
      value="This category defines different profile settings that adjust content processing, delivery, and compatibility for various platforms."
      verticalAlign="center"
    />
    <SegmentedControl
      id="segmentedControl1"
      itemMode="static"
      label="handle_ads_free"
      paddingType="spacious"
      style={{ map: { checkedLabel: "success" } }}
      value="{{ self.values[0] }}"
    >
      <Option id="ed1b8" value="204" />
      <Option id="2f1bc" value="200" />
    </SegmentedControl>
    <SegmentedControl
      id="segmentedControl3"
      itemMode="static"
      label="uaconfig"
      paddingType="spacious"
      style={{ map: { checkedLabel: "success" } }}
      value="{{ self.values[0] }}"
    >
      <Option id="ed1b8" value="Passed-in" />
      <Option id="2f1bc" value="Request Header" />
    </SegmentedControl>
    <Text id="text13" value="**mtconfig**" verticalAlign="center" />
    <Container
      id="group4"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "tokens/d5710d2b" } }}
    >
      <View id="a8803" viewKey="View 1">
        <Text id="text21" style={{}} value="**Key**" verticalAlign="center" />
        <Text id="text22" style={{}} value="**Value**" verticalAlign="center" />
        <Icon
          id="icon6"
          horizontalAlign="right"
          icon="bold/interface-add-circle"
          style={{}}
        >
          <Event
            event="click"
            method="setValue"
            params={{
              map: { value: '{{ mtconfig.value.concat({"key":""}) }}' },
            }}
            pluginId="mtconfig"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Icon>
      </View>
    </Container>
    <JSONEditor id="jsonEditor3" value="{{ mtconfigPreview.value }}" />
    <ListViewBeta
      id="listView2"
      _primaryKeys="{{ i }}"
      data="{{ mtconfig.value }}"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Container
        id="group7"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        padding="0"
        showBody={true}
        showBorder={false}
        style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
      >
        <View id="a8803" viewKey="View 1">
          <Select
            id="select15"
            data={
              '{{ keyDictionary.value.filter ( obj => obj.category === "mtconfig" && obj.availableApps.includes(select6.selectedItem.app_name)) }}'
            }
            emptyMessage="No options"
            label=""
            labelPosition="top"
            overlayMaxHeight={375}
            placeholder="key"
            showSelectionIndicator={true}
            values="{{ item.key }}"
          >
            <Event
              event="change"
              method="setIn"
              params={{
                keyPath: "[{{ i }}]",
                value: "{ {{ self.value }}: {{ Object.values(item)[0] }} }",
              }}
              pluginId="mtconfig"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
          <Select
            id="select16"
            data="{{ select15.selectedItem.values }}"
            emptyMessage="No options"
            label=""
            labelPosition="top"
            overlayMaxHeight={375}
            placeholder="value"
            showSelectionIndicator={true}
            values="{{ item }}"
          >
            <Event
              event="change"
              method="setIn"
              params={{
                keyPath: "[{{ i }}, {{ Object.keys(item)[0] }}]",
                value: "{{ self.value }}",
              }}
              pluginId="mtconfig"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
          <Button
            id="button15"
            hidden="{{ group7.hovered === false }}"
            iconBefore="bold/interface-delete-bin-1"
            style={{
              label: "danger",
              border: "danger",
              hoverBackground: "rgba(180, 40, 70, 0.2)",
            }}
          >
            <Event
              event="click"
              method="setValue"
              params={{
                map: {
                  value: "{{ contextId.value.filter((_, idx) => idx !== i) }}",
                },
              }}
              pluginId="mtconfig"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
        </View>
      </Container>
    </ListViewBeta>
    <JSONEditor id="jsonEditor4" value="{{ profPreview.value }}" />
    <Text id="text25" value="**prof**" verticalAlign="center" />
    <Container
      id="group8"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "tokens/d5710d2b" } }}
    >
      <View id="a8803" viewKey="View 1">
        <Text id="text23" style={{}} value="**Key**" verticalAlign="center" />
        <Text id="text24" style={{}} value="**Value**" verticalAlign="center" />
        <Icon
          id="icon7"
          horizontalAlign="right"
          icon="bold/interface-add-circle"
          style={{}}
        >
          <Event
            event="click"
            method="setValue"
            params={{ map: { value: '{{ prof.value.concat({"key":""}) }}' } }}
            pluginId="prof"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Icon>
      </View>
    </Container>
    <ListViewBeta
      id="listView3"
      _primaryKeys="{{ i }}"
      data="{{ prof.value }}"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Container
        id="group10"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        padding="0"
        showBody={true}
        showBorder={false}
        style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
      >
        <View id="a8803" viewKey="View 1">
          <Select
            id="select19"
            data={
              '{{ keyDictionary.value.filter ( obj => obj.category === "prof" && obj.availableApps.includes(select6.selectedItem.app_name)) }}'
            }
            emptyMessage="No options"
            label=""
            labelPosition="top"
            overlayMaxHeight={375}
            placeholder="key"
            showSelectionIndicator={true}
            values="{{ item.key }}"
          >
            <Event
              event="change"
              method="setIn"
              params={{
                keyPath: "[{{ i }}]",
                value: "{ {{ self.value }}: {{ Object.values(item)[0] }} }",
              }}
              pluginId="prof"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
          <Select
            id="select20"
            data="{{ select19.selectedItem.values }}"
            emptyMessage="No options"
            label=""
            labelPosition="top"
            overlayMaxHeight={375}
            placeholder="value"
            showSelectionIndicator={true}
            values="{{ item }}"
          >
            <Event
              event="change"
              method="setIn"
              params={{
                keyPath: "[{{ i }}, {{ Object.keys(item)[0] }}]",
                value: "{{ self.value }}",
              }}
              pluginId="prof"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
          <Button
            id="button17"
            hidden="{{ group10.hovered === false }}"
            iconBefore="bold/interface-delete-bin-1"
            style={{
              label: "danger",
              border: "danger",
              hoverBackground: "rgba(180, 40, 70, 0.2)",
            }}
          >
            <Event
              event="click"
              method="setValue"
              params={{
                map: {
                  value: "{{ contextId.value.filter((_, idx) => idx !== i) }}",
                },
              }}
              pluginId="prof"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
        </View>
      </Container>
    </ListViewBeta>
  </Body>
  <Footer>
    <Button
      id="button18"
      hidden="{{!current_user.groups.map(group => group.name).includes('Support')}}"
      style={{
        label: "info",
        border: "info",
        hoverBackground: "rgba(0, 140, 195, 0.2)",
      }}
      text="Preview JSON"
    />
    <Button
      id="button3"
      style={{ background: "tokens/d5710d2b", activeBackground: "primary" }}
      text="Save"
    >
      <Event
        event="click"
        method="trigger"
        params={{}}
        pluginId="createGlobalParam"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
