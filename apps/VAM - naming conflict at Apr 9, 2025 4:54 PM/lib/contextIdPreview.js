function transformArrayToObject(array) {
    return array.reduce((acc, obj) => {
        return { ...acc, ...obj };
    }, {});
}

// Example usage
const inputArray = {{ contextId.value }}

const transformedObject = transformArrayToObject(inputArray);
return transformedObject;