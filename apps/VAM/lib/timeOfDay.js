// Reference external variables with curly brackets or using JS variables
var greeting = "Hello";
const hour = new Date().getHours();
    
    if (hour >= 5 && hour < 12) {
        greeting = "Good morning";
    } else if (hour >= 12 && hour < 17) {
        greeting = "Good afternoon";
    } else {
        greeting = "Good evening";
    }

return greeting;