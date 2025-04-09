<SidebarFrame
  id="sidebarFrame7"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden="{{ retoolContext.currentPage === 'home' }}"
  isHiddenOnMobile={true}
  padding="8px 12px"
  showFooter={true}
  style={{ map: { background: "primary" } }}
  width="medium"
>
  <Body>
    <Navigation
      id="navigation9"
      appTargetByIndex=""
      captionByIndex=""
      data=""
      disabled=""
      disabledByIndex=""
      hiddenByIndex=""
      highlightByIndex=""
      iconByIndex=""
      iconPositionByIndex=""
      itemMode="static"
      itemTypeByIndex=""
      keyByIndex=""
      labels=""
      orientation="vertical"
      parentKeyByIndex=""
      screenTargetByIndex=""
      screenTargetIdByIndex=""
      src={null}
      srcType={null}
      style={{ map: { highlightBackground: "rgba(69, 71, 80, 1)" } }}
      tooltipByIndex=""
    >
      <Option
        id="963a8"
        iconPosition="left"
        itemType="page"
        key="4929d801-8a2a-4e52-9b5a-0c947e870af3"
        label="Parameters"
      />
      <Option
        id="72511"
        iconPosition="left"
        itemType="page"
        label="Global Params"
        parentKey="4929d801-8a2a-4e52-9b5a-0c947e870af3"
        screenTargetId="globalParams"
      />
      <Option
        id="63853"
        disabled={false}
        hidden={false}
        iconPosition="left"
        itemType="app"
        label="Slot Params"
        parentKey="4929d801-8a2a-4e52-9b5a-0c947e870af3"
      />
      <Option
        id="8f25e"
        iconPosition="left"
        itemType="page"
        label="Device Tags"
      />
      <Option
        id="17f88"
        disabled={false}
        iconPosition="left"
        itemType="app"
        label="Channels"
      />
      <Option
        id="9dda1"
        disabled={false}
        hidden={false}
        iconPosition="left"
        itemType="app"
        label="Override"
      />
      <Option
        id="cf028"
        disabled={false}
        hidden={false}
        iconPosition="left"
        itemType="page"
        label="A/B Testing"
      />
      <Option
        id="b11e1"
        disabled={false}
        hidden={false}
        iconPosition="left"
        itemType="app"
        key="4f8adef6-3e3c-4d1b-8a5c-153ac04200d1"
        label="Configuration"
      />
      <Option
        id="9c00c"
        disabled={false}
        hidden={false}
        iconPosition="left"
        itemType="page"
        label="Roku Config"
        parentKey="4f8adef6-3e3c-4d1b-8a5c-153ac04200d1"
        screenTargetId="rokuConfig"
      />
      <Option
        id="75102"
        disabled={false}
        hidden={false}
        iconPosition="left"
        itemType="page"
        label="Amazon Config"
        parentKey="4f8adef6-3e3c-4d1b-8a5c-153ac04200d1"
        screenTargetId="amazonConfig"
      />
      <Option
        id="64e8a"
        disabled={false}
        hidden={false}
        iconPosition="left"
        itemType="app"
        label="Yoap"
      />
      <Option
        id="c2f46"
        disabled={false}
        iconPosition="left"
        itemType="page"
        label="Ad Lines"
        screenTargetId="adLines"
      />
      <Option
        id="35bd5"
        appTarget="f152c8a0-fb79-11ef-b5b7-2b90c652b776"
        disabled={false}
        hidden={false}
        iconPosition="left"
        itemType="page"
        label="Audit"
      />
      <Event
        event="click"
        method="openPage"
        params={{ map: { pageName: "{{ item.id }}" } }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Navigation>
  </Body>
  <Footer>
    <Avatar
      id="avatar7"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      labelCaption="{{ current_user.email }}"
      margin="4px 4px"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ map: { background: "automatic" } }}
    />
  </Footer>
</SidebarFrame>
