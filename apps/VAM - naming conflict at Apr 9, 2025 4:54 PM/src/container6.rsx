<Container
  id="container6"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden="{{!current_user.groups.map(group => group.name).includes('All Users')}}"
  padding="12px"
  showBody={true}
>
  <Header>
    <Text
      id="containerTitle6"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="0a09e" viewKey="View 1">
    <Text id="text33" value="#### Ad Lines" verticalAlign="center" />
    <Divider id="divider6" />
    <Select
      id="select24"
      data="{{ [...new Set(getAdLines.data.config_name)] }}"
      emptyMessage="No options"
      label="Config Name"
      labelPosition="top"
      labels="{{ item }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{ map: { value: "false" } }}
        pluginId="changeDetection"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Container
      id="stack2"
      _flexWrap={true}
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <View id="d1107" viewKey="View 1">
        <Button
          id="button20"
          style={{
            border: "warning",
            label: "warning",
            hoverBackground: "rgba(225, 100, 40, 0.2)",
            background: "rgba(255, 255, 255, 0)",
          }}
          text="Create New Config"
        >
          <Event
            event="click"
            method="show"
            params={{}}
            pluginId="drawerFrame2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="button23"
          style={{
            border: "danger",
            label: "danger",
            hoverBackground: "rgba(180, 40, 70, 0.2)",
            background: "rgba(255, 255, 255, 0)",
          }}
          text="Delete Config"
        />
      </View>
    </Container>
    <Select
      id="select8"
      captionByIndex=""
      colorByIndex=""
      data="{{ getAdLinesByConfig.data }}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Version"
      labelPosition="top"
      labels="{{ item.version }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{ item.id }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{ map: { value: "false" } }}
        pluginId="changeDetection"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Container
      id="stack1"
      _flexWrap={true}
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <View id="d1107" viewKey="View 1">
        <Button
          id="button5"
          disabled="{{ select8.selectedItem.status === 'active' }}"
          style={{
            border: "success",
            label: "success",
            hoverBackground: "rgba(0, 168, 70, 0.2)",
            background: "rgba(255, 255, 255, 0)",
          }}
          text="Activate Version"
        />
        <Button
          id="button24"
          disabled="{{ changeDetection.value === false }}"
          hidden=""
          style={{
            border: "info",
            label: "info",
            hoverBackground: "rgba(0, 140, 195, 0.2)",
            background: "rgba(255, 255, 255, 0)",
          }}
          text="Update Version"
        >
          <Event
            event="click"
            method="trigger"
            params={{
              map: {
                options: {
                  object: {
                    onSuccess: null,
                    onFailure: null,
                    additionalScope: null,
                  },
                },
              },
            }}
            pluginId="updateAdLines"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="button6"
          style={{
            border: "danger",
            label: "danger",
            hoverBackground: "rgba(180, 40, 70, 0.2)",
            background: "rgba(255, 255, 255, 0)",
          }}
          text="Delete Version"
        />
      </View>
    </Container>
    <TextInput
      id="textInput10"
      label="Video Source Content"
      labelPosition="top"
      placeholder="Enter value"
      value="{{ select8.selectedItem.video_source_content }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{ map: { value: "true" } }}
        pluginId="changeDetection"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextArea
      id="textArea1"
      autoResize={true}
      customValidation="{{ urlValidator.value === true ? '' : urlValidator.value.error }}"
      label="URL"
      labelPosition="top"
      minLines="5"
      placeholder="Enter value"
      value="{{ select8.selectedItem.url }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{ map: { value: "true" } }}
        pluginId="changeDetection"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
    <Spacer id="spacer1" />
  </View>
</Container>
