function transformArrayToObject(array) {
    return array.reduce((acc, obj) => {
        return { ...acc, ...obj };
    }, {});
}

// Example usage
const inputArray = {{ mtconfig.value }}

const transformedObject = transformArrayToObject(inputArray);
return transformedObject;