function parseAndValidateURL(url) {
    try {
        const urlPattern = /^(https?:\/\/)?([\w.-]+|\[.*?\])(:\d+)?(\/[^?]*)?(\?[^#]*)?(#.*)?$/;
        if (!urlPattern.test(url)) {
            let errorMessage = "Invalid URL format:";
            if (!/^https?:\/\//.test(url)) {
                errorMessage += " Missing or incorrect protocol (http or https).";
            }
            if (!/[\w.-]+|\[.*?\]/.test(url)) {
                errorMessage += " Invalid or missing domain name.";
            }
            if (/[^\w.-:\/\?&#\[\]=]/.test(url)) {
                errorMessage += " Contains invalid characters.";
            }
            throw new Error(errorMessage);
        }
        
        if ((url.match(/\?/g) || []).length > 1) {
            throw new Error("Invalid URL format: Multiple '?' detected in query parameters.");
        }
        
        if (/(&|\?)=/.test(url)) {
            throw new Error("Invalid URL format: Query parameter key is missing before '='.");
        }
        
        if (/\s/.test(url)) {
            throw new Error("Invalid URL format: URL contains spaces.");
        }
        
        // Detect placeholders
        const placeholderPattern = /\[(.*?)\]/g;
        const placeholders = {};
        
        // Check domain placeholder
        const domainMatch = url.match(/^https?:\/\/(\[.*?\])/);
        if (domainMatch) {
            placeholders.domain = domainMatch[1];
        }
        
        // Parse URL while preserving placeholders
        const params = {};
        const queryString = url.split('?')[1];
        if (queryString) {
            const queryParams = queryString.split('&');
            queryParams.forEach(param => {
                const [key, value] = param.split('=');
                params[key] = value;
                
                // Detect placeholders in parameter values
                const placeholderMatch = value.match(placeholderPattern);
                if (placeholderMatch) {
                    placeholders[key] = placeholderMatch[0];
                }
            });
        }
        
        // Replace placeholders with 'placeholder' for URL parsing
        const sanitizedUrl = url.replace(placeholderPattern, 'placeholder');
        
        let urlObject;
        try {
            urlObject = new URL(sanitizedUrl, "http://placeholder.com");
        } catch (e) {
            throw new Error("Invalid URL format: Unable to parse the URL correctly.");
        }
        
        return {
            valid: true,
            url: url,
            params,
            placeholders
        };
    } catch (error) {
        console.error(`Error: ${error.message}`);
        return {
            valid: false,
            error: error.message
        };
    }
}

// Example usage
const testURL = {{ textArea1.value }};
return parseAndValidateURL(testURL);
