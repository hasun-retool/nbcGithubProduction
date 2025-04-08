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
    <Include src="./container7.rsx" />
  </Frame>
</Screen>
