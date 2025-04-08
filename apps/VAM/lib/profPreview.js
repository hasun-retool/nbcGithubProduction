function transformArrayToObject(array) {
    return array.reduce((acc, obj) => {
        return { ...acc, ...obj };
    }, {});
}

// Example usage
const inputArray = {{ prof.value }}

const transformedObject = transformArrayToObject(inputArray);
return transformedObject;