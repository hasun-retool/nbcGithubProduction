<Screen
  id="home"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="NBC Home"
  urlSlug=""
>
  <Function
    id="timeOfDay"
    funcBody={include("../lib/timeOfDay.js", "string")}
  />
  <Function
    id="homeTiles"
    funcBody={include("../lib/homeTiles.js", "string")}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    style={{ ordered: [] }}
    type="main"
  >
    <Container
      id="container7"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle7"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="71d38" viewKey="View 1">
        <Text
          id="text51"
          value="### {{ timeOfDay.value}}, {{ current_user.firstName || 'colleague or friend' }}!"
          verticalAlign="center"
        />
        <Text id="text54" value="##### Common Apps" verticalAlign="center" />
        <ListViewBeta
          id="gridView1"
          _primaryKeys="{{ i }}"
          data="{{ homeTiles.value }}"
          itemWidth="200px"
          layoutType="grid"
          margin="0"
          numColumns={3}
          padding="0"
        >
          <Container
            id="container8"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            margin="10px"
            padding="15px"
            showBody={true}
            style={{ map: { border: "{{ item.color }}" } }}
          >
            <Header>
              <Text
                id="containerTitle8"
                value="#### {{ item }}"
                verticalAlign="center"
              />
            </Header>
            <View id="5d87c" viewKey="View 1">
              <Text
                id="text52"
                value="##### {{ item.title}}"
                verticalAlign="center"
              />
              <Text
                id="text53"
                value="{{ item.description }}"
                verticalAlign="center"
              />
              <Button
                id="button30"
                iconAfter="bold/interface-arrows-right"
                style={{
                  label: "{{ item.color }}",
                  border: "{{ item.color }}",
                }}
                text="Go"
              >
                <Event
                  event="click"
                  method="openPage"
                  params={{
                    options: { map: { passDataWith: "urlParams" } },
                    pageName: "{{ item.page }}",
                  }}
                  pluginId=""
                  type="util"
                  waitMs="0"
                  waitType="debounce"
                />
              </Button>
            </View>
          </Container>
        </ListViewBeta>
      </View>
    </Container>
  </Frame>
</Screen>
