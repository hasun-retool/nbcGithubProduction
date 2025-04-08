<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  sticky={true}
  style={{ ordered: [{ "primary-surface": "#0d0e11" }] }}
  type="header"
>
  <Image
    id="image1"
    fit="contain"
    heightType="fixed"
    horizontalAlign="center"
    margin="0"
    src="https://www.nbc.com/generetic/generated/images/4fac8d8aaa7d8798a512dac0322d8d14.png"
  />
  <Navigation
    id="navigation1"
    appTargetByIndex=""
    captionByIndex=""
    data=""
    disabledByIndex=""
    hiddenByIndex=""
    highlightByIndex=""
    horizontalAlignment="center"
    iconByIndex=""
    iconPositionByIndex=""
    itemMode="static"
    itemTypeByIndex=""
    keyByIndex=""
    labels=""
    parentKeyByIndex=""
    retoolFileObject={{}}
    screenTargetByIndex=""
    screenTargetIdByIndex=""
    style={{ map: { highlightBackground: "rgba(65, 68, 75, 1)" } }}
    tooltipByIndex=""
  >
    <Option
      id="bbe78"
      highlight="{{ retoolContext.currentPage === 'home' ? true : false }}"
      icon="bold/interface-home-3"
      iconPosition="left"
      itemType="page"
      label="Home"
      screenTargetId="home"
    />
    <Option
      id="2b08a"
      disabled={false}
      hidden={false}
      highlight="{{ retoolContext.currentPage === 'vamHome' ? true : false }}"
      icon="bold/entertainment-camera-video"
      iconPosition="left"
      itemType="page"
      label="Video Ads Module"
      screenTargetId="globalParams"
    />
    <Event
      event="click"
      method="openPage"
      params={{ ordered: [{ pageName: "{{ item.id }}" }] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Navigation>
  <DropdownButton
    id="dropdownButton1"
    _colorByIndex={["", ""]}
    _fallbackTextByIndex={["", ""]}
    _imageByIndex={["", ""]}
    _values={["", ""]}
    icon="bold/interface-arrows-button-down"
    iconPosition="right"
    itemMode="static"
    overlayMaxHeight={375}
    styleVariant="outline"
    text="{{ current_user.email }}"
  >
    <Option
      id="4e2a3"
      icon="{{ theme.mode === 'Light' ? '/icon:bold/interface-lighting-brightness-1' : '/icon:bold/interface-lighting-brightness-1' }}"
      label="Switch to {{ theme.mode === 'Light' ? 'Dark' : 'Light'}} Mode"
    >
      <Event
        event="click"
        method="setMode"
        params={{
          map: { modeName: "{{ theme.mode === 'Light' ? 'Dark' : 'Light' }}" },
        }}
        pluginId=""
        type="theme"
        waitMs="0"
        waitType="debounce"
      />
    </Option>
    <Option id="9d57c" icon="bold/interface-setting-cog" label="Settings" />
  </DropdownButton>
</Frame>
