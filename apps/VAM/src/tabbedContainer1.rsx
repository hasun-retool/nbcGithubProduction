<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      style={{ map: { selectedBackground: "info" } }}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="defb3" value="Tab 1" />
      <Option id="48d99" value="Tab 2" />
      <Option id="a0523" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="5c470" viewKey="All">
    <Table
      id="globalParamsTable"
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getGlobalParams.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      groupByColumns={{}}
      overflowType="pagination"
      primaryKeyColumnId="4bd1c"
      serverPaginated={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      templatePageSize="25"
      toolbarPosition="bottom"
    >
      <Column
        id="4bd1c"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={272.265625}
      />
      <Column
        id="4048b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="key"
        label="Key"
        placeholder="Enter value"
        position="center"
        size={36.8125}
      />
      <Column
        id="d9f62"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        label="ID"
        placeholder="Enter value"
        position="left"
        referenceId="identifier"
        size={206.921875}
        summaryAggregationMode="none"
        valueOverride="{{ currentSourceRow.app_name }}::{{ currentSourceRow.platform }}::{{ currentSourceRow.stream_type }}::{{ currentSourceRow.variant_id }}"
      />
      <Column
        id="c3ae5"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="false"
        key="app_name"
        label="App name"
        placeholder="Enter value"
        position="center"
        size={73.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="2a45e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="false"
        key="platform"
        label="Platform"
        placeholder="Enter value"
        position="center"
        size={63.703125}
        summaryAggregationMode="none"
      />
      <Column
        id="c159f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="false"
        key="stream_type"
        label="Stream type"
        placeholder="Enter value"
        position="center"
        size={85.1875}
        summaryAggregationMode="none"
      />
      <Column
        id="40f22"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="false"
        key="variant_id"
        label="Variant ID"
        placeholder="Enter value"
        position="center"
        size={79.171875}
        summaryAggregationMode="none"
      />
      <Column
        id="d2f84"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="afid"
        label="Afid"
        placeholder="Enter value"
        position="center"
        size={86.46875}
        summaryAggregationMode="none"
      />
      <Column
        id="8fd7a"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="context_id_default"
        label="Context ID default"
        placeholder="Enter value"
        position="center"
        size={118.9375}
        summaryAggregationMode="none"
      />
      <Column
        id="e67f9"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="context_id_harmonic"
        label="Context ID harmonic"
        placeholder="Enter value"
        position="center"
        size={131.890625}
      />
      <Column
        id="37fb0"
        alignment="left"
        editable="false"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="csid"
        label="Csid"
        placeholder="Enter value"
        position="center"
        size={85.109375}
        summaryAggregationMode="none"
      />
      <Column
        id="b542b"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="flag"
        label="Flag"
        placeholder="Enter value"
        position="center"
        size={39.96875}
      />
      <Column
        id="3a7d7"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="metr"
        label="Metr"
        placeholder="Enter value"
        position="center"
        size={42.484375}
      />
      <Column
        id="b34ee"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="resp"
        label="Resp"
        placeholder="Select option"
        position="center"
        size={79.5625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="deba0"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="sfid_default"
        label="Sfid default"
        placeholder="Enter value"
        position="center"
        size={85.21875}
        summaryAggregationMode="none"
      />
      <Column
        id="abed9"
        alignment="center"
        format="button"
        formatOptions={{ variant: "solid" }}
        groupAggregationMode="none"
        label="Action"
        placeholder="Enter value"
        position="right"
        referenceId="action"
        size={52.203125}
        summaryAggregationMode="none"
        valueOverride="Edit"
      >
        <Event
          event="clickCell"
          method="setValue"
          params={{
            map: {
              value:
                '{{ currentRow.app_name + "::" + currentRow.platform + "::" + currentRow.stream_type + "::" + currentRow.variant_id}}',
            },
          }}
          pluginId="tabs1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="clickCell"
          method="trigger"
          params={{}}
          pluginId="mapEditFields"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="fc3f7"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="dolby_atp"
        label="Dolby atp"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f05c2"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="handle_ads_free"
        label="Handle ads free"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e0fba"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="uaconfig"
        label="Uaconfig"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="edab1"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="mtconfig"
        label="Mtconfig"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c3861"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="prof"
        label="Prof"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="0c1c7"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="sfid"
        label="Sfid"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8dfc1"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="contextid"
        label="Contextid"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="globalParamsTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="globalParamsTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
  <View
    id="a89f9"
    disabled={false}
    hidden="{{ tabs1.value === 'All'}}"
    iconPosition="left"
    viewKey={
      '{{ globalParamsTable.selectedRow.app_name + "::" + globalParamsTable.selectedRow.platform + "::" + globalParamsTable.selectedRow.stream_type + "::" +globalParamsTable.selectedRow.variant_id}}'
    }
  >
    <Text
      id="text26"
      style={{ ordered: [{ color: "highlight" }] }}
      value="##### General"
      verticalAlign="center"
    />
    <Select
      id="select22"
      data="{{ getDistinctAppName.data }}"
      emptyMessage="No options"
      label="App Name"
      labels="{{ item.app_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ globalParamsTable.selectedRow.app_name }}"
      values="{{ item.app_name }}"
    />
    <TextInput
      id="textInput11"
      label="Variant Id"
      placeholder="Optional"
      value="{{ globalParamsTable.selectedRow.variant_id }}"
    />
    <Select
      id="select23"
      data="{{ getDistinctPlatform.data }}"
      emptyMessage="No options"
      label="Platform"
      labels="{{ item.platform }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ globalParamsTable.selectedRow.platform }}"
      values="{{ item.platform }}"
    />
    <Select
      id="select21"
      data="{{ getDistinctStreamType.data }}"
      emptyMessage="No options"
      label="Stream Type"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ globalParamsTable.selectedRow.stream_type }}"
      values="{{ item.stream_type }}"
    />
    <Text
      id="text27"
      style={{ ordered: [{ color: "rgba(139, 139, 139, 1)" }] }}
      value="Provide details for your global parameter."
      verticalAlign="center"
    />
    <Divider id="divider5" />
    <Text
      id="text28"
      style={{ ordered: [{ color: "danger" }] }}
      value="##### Identifers"
      verticalAlign="center"
    />
    <TextInput
      id="textInput12"
      label="afid"
      labelWidth="22"
      placeholder="default"
      value="{{ globalParamsTable.selectedRow.afid }}"
    />
    <TextInput
      id="textInput13"
      label="csid"
      labelWidth="22"
      placeholder="default"
      value="{{ globalParamsTable.selectedRow.csid }}"
    />
    <Text id="text30" value="**contextId**" verticalAlign="center" />
    <Text
      id="text29"
      style={{ ordered: [{ color: "#8b8b8b" }] }}
      value="This category contains unique values used to identify content, sources, and context across systems."
      verticalAlign="center"
    />
    <Container
      id="group12"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "tokens/d5710d2b" } }}
    >
      <View id="a8803" viewKey="View 1">
        <Text id="text31" style={{}} value="**Key**" verticalAlign="center" />
        <Text id="text32" style={{}} value="**Value**" verticalAlign="center" />
        <Icon
          id="icon8"
          horizontalAlign="right"
          icon="bold/interface-add-circle"
          style={{}}
        >
          <Event
            event="click"
            method="setValue"
            params={{ map: { value: '{{ contextId.value.concat({"":""}) }}' } }}
            pluginId="contextId"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Icon>
      </View>
    </Container>
    <ListViewBeta
      id="contextIdListView2"
      _primaryKeys=""
      data="{{ contextId.value }}"
      enableInstanceValues={true}
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Container
        id="group11"
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
            id="key2"
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
            id="value2"
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
            id="button19"
            hidden="{{ group11.hovered === false }}"
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
    <JSONEditor id="jsonEditor5" value="{{ contextIdPreview.value }}" />
    <Text id="text34" value="**sfid**" verticalAlign="center" />
    <Container
      id="group13"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "tokens/d5710d2b" } }}
    >
      <View id="a8803" viewKey="View 1">
        <Text id="text35" style={{}} value="**Key**" verticalAlign="center" />
        <Text id="text36" style={{}} value="**Value**" verticalAlign="center" />
        <Icon
          id="icon9"
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
    <JSONEditor id="jsonEditor6" value="{{ sfidPreview.value }}" />
    <ListViewBeta
      id="listView4"
      _primaryKeys="{{ i }}"
      data="{{ sfid.value }}"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Container
        id="group14"
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
            id="select25"
            customValidation="{{ deDeupKeysValidation.value === 'Valid' ? '' : deDeupKeysValidation.value }}"
            data={
              '{{ keyDictionary.value.filter ( obj => obj.category === "sfid" && obj.availableApps.includes(select22.selectedItem.app_name)) }}'
            }
            emptyMessage="No options"
            label=""
            labelPosition="top"
            labels="{{ item.key }}"
            overlayMaxHeight={375}
            placeholder="key"
            showSelectionIndicator={true}
            tooltipByIndex=""
            value="{{ Object.keys(item)[0] }}"
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
            id="select26"
            data="{{ select25.selectedItem.values }}"
            emptyMessage="No options"
            label=""
            labelPosition="top"
            overlayMaxHeight={375}
            placeholder="value"
            showSelectionIndicator={true}
            value="{{ item[select25.selectedItem.key] }}"
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
            id="button26"
            hidden="{{ group14.hovered === false }}"
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
    <Divider id="divider7" />
    <Text
      id="text38"
      style={{ ordered: [{ color: "info" }] }}
      value="##### Metadata"
      verticalAlign="center"
    />
    <Multiselect
      id="multiselect2"
      data="{{ flags.value }}"
      emptyMessage="No options"
      label="flags"
      labels="{{ _.startCase(item) }}"
      labelWidth="21"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      value="{{ globalParamsTable.selectedRow.flag }}"
      values="{{ item }}"
      wrapTags={true}
    />
    <NumberInput
      id="numberInput2"
      currency="USD"
      inputValue={0}
      label="metr"
      placeholder="Enter value"
      showClear={true}
      value="{{ globalParamsTable.selectedRow.metr }}"
    />
    <TextInput
      id="textInput16"
      label="resp"
      placeholder="Enter value"
      showClear={true}
      value="{{ globalParamsTable.selectedRow.resp }}"
    />
    <Text
      id="text37"
      style={{ ordered: [{ color: "#8b8b8b" }] }}
      value="This section includes encoded parameters and numeric values that likely influence playback behavior, tracking, or system configurations."
      verticalAlign="center"
    />
    <Divider id="divider8" />
    <Text
      id="text39"
      style={{ ordered: [{ color: "success" }] }}
      value="##### Configuration"
      verticalAlign="center"
    />
    <SegmentedControl
      id="segmentedControl7"
      itemMode="static"
      label="dolby_atp"
      paddingType="spacious"
      style={{ map: { checkedLabel: "success" } }}
      value="{{ globalParamsTable.selectedRow.dolby_atp }}"
    >
      <Option id="ed1b8" value="On" />
      <Option id="2f1bc" value="Disabled" />
    </SegmentedControl>
    <Text
      id="text40"
      style={{ ordered: [{ color: "#8b8b8b" }] }}
      value="This category defines different profile settings that adjust content processing, delivery, and compatibility for various platforms."
      verticalAlign="center"
    />
    <SegmentedControl
      id="segmentedControl6"
      itemMode="static"
      label="handle_ads_free"
      paddingType="spacious"
      style={{ map: { checkedLabel: "success" } }}
      value="{{ globalParamsTable.selectedRow.handle_ads_free}}"
    >
      <Option id="ed1b8" value="204" />
      <Option id="2f1bc" value="200" />
    </SegmentedControl>
    <SegmentedControl
      id="segmentedControl8"
      itemMode="static"
      label="uaconfig"
      paddingType="spacious"
      style={{ map: { checkedLabel: "success" } }}
      value="{{ globalParamsTable.selectedRow.uaconfig }}"
    >
      <Option id="ed1b8" value="Passed In" />
      <Option id="2f1bc" value="Request Header" />
    </SegmentedControl>
    <Text id="text41" value="**mtconfig**" verticalAlign="center" />
    <Container
      id="group17"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "tokens/d5710d2b" } }}
    >
      <View id="a8803" viewKey="View 1">
        <Text id="text43" style={{}} value="**Key**" verticalAlign="center" />
        <Text id="text44" style={{}} value="**Value**" verticalAlign="center" />
        <Icon
          id="icon10"
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
    <JSONEditor id="jsonEditor7" value="{{ mtconfigPreview.value }}" />
    <ListViewBeta
      id="listView5"
      _primaryKeys="{{ i }}"
      data="{{ mtconfig.value }}"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Container
        id="group15"
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
            id="select27"
            data={
              '{{ keyDictionary.value.filter ( obj => obj.category === "mtconfig" && obj.availableApps.includes(select22.selectedItem.app_name)) }}'
            }
            emptyMessage="No options"
            label=""
            labelPosition="top"
            overlayMaxHeight={375}
            placeholder="key"
            showSelectionIndicator={true}
            value="{{ Object.keys(item)[0] }}"
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
            id="select28"
            data="{{ select27.selectedItem.values }}"
            emptyMessage="No options"
            label=""
            labelPosition="top"
            overlayMaxHeight={375}
            placeholder="value"
            showSelectionIndicator={true}
            value="{{ item[select27.selectedItem.key] }}"
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
            id="button27"
            hidden="{{ group15.hovered === false }}"
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
    <JSONEditor id="jsonEditor8" value="{{ profPreview.value }}" />
    <Text id="text42" value="**prof**" verticalAlign="center" />
    <Container
      id="group18"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "tokens/d5710d2b" } }}
    >
      <View id="a8803" viewKey="View 1">
        <Text id="text45" style={{}} value="**Key**" verticalAlign="center" />
        <Text id="text46" style={{}} value="**Value**" verticalAlign="center" />
        <Icon
          id="icon11"
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
      id="listView6"
      _primaryKeys="{{ i }}"
      data="{{ prof.value }}"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Container
        id="group16"
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
            id="select29"
            data={
              '{{ keyDictionary.value.filter ( obj => obj.category === "prof" && obj.availableApps.includes(select22.selectedItem.app_name)) }}'
            }
            emptyMessage="No options"
            label=""
            labelPosition="top"
            overlayMaxHeight={375}
            placeholder="key"
            showSelectionIndicator={true}
            value="{{ Object.keys(item)[0] }}"
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
            id="select30"
            data="{{ select29.selectedItem.values }}"
            emptyMessage="No options"
            label=""
            labelPosition="top"
            overlayMaxHeight={375}
            placeholder="value"
            showSelectionIndicator={true}
            value="{{ item[select29.selectedItem.key] }}"
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
            id="button28"
            hidden="{{ group16.hovered === false }}"
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
    <Button
      id="button29"
      style={{
        border: "danger",
        hoverBackground: "rgba(180, 40, 70, 0.1)",
        label: "danger",
      }}
      text="Save"
    />
  </View>
</Container>
