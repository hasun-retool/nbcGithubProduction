const params = listView7.data;

const queryString = "?" + params.map(param => `${param.name}=${param.value}`).join("&");

return queryString;
