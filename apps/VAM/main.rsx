<App>
  <Include src="./src/home.rsx" />
  <Include src="./src/adLines.rsx" />
  <Include src="./src/rokuConfig.rsx" />
  <Include src="./src/amazonConfig.rsx" />
  <Include src="./src/vamHome.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Include src="./src/globalParams.rsx" />
  <Include src="./header.rsx" />
  <Include src="./sidebar.rsx" />
</App>
