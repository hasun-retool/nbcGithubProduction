function transformJson(inputJson) {
    return Object.entries(inputJson).map(([key, value]) => ({ [key]: value }));
}

const editContextId = globalParamsTable.selectedRow.contextid;
const editSfid = globalParamsTable.selectedRow.sfid;
const editMtconfig = globalParamsTable.selectedRow.mtconfig;
const editProf = globalParamsTable.selectedRow.prof;

const transformedContext = transformJson(editContextId);
const transformedSfid = transformJson(editSfid);
const transformedMtconfig = transformJson(editMtconfig);
const transformedProf = transformJson(editProf);

return {
  transformedContext,
  transformedSfid,
  transformedMtconfig,
  transformedProf
}