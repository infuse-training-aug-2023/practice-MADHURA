const user = {
    name: "Piyush Sharma",
    designation: "Senior Software Engineer",
    company: "Infuse Consulting",
    hobbies: ["Reading", "Listening to music", "Collecting stamps"]
};

/**
 * Use destructuting to log the following
*/
const printUserProfile = () => {
    const { name, designation, company, hobbies } = user;
    let hobbiesList = "";
    
    for (let i = 0; i < hobbies.length; i++) {
        hobbiesList += hobbies[i];
        
        if (i === hobbies.length - 2) {
            hobbiesList += " and ";
        } else if (i !== hobbies.length - 1) {
            hobbiesList += ", ";
        }
    }
    
    console.log(`${name} is a ${designation} at ${company}. He likes ${hobbiesList}.`);
};

printUserProfile();
