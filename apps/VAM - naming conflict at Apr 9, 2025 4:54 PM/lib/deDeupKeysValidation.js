function checkDuplicateKeys(arrayOfObjects) {
    let keysSet = new Set();
    
    for (let obj of arrayOfObjects) {
        for (let key in obj) {
            if (keysSet.has(key)) {
                return `Key "${key}" already exists.`;
            }
            keysSet.add(key);
        }
    }
    
    return "Valid";
}

// Example usage:
const objectsArray = {{ listView4.data }};

return checkDuplicateKeys(objectsArray);
