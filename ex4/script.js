const user = {
    name: "Piyush Sharma",
    designation: "Senior Software Engineer",
    company: "Infuse Consulting",
    hobbies: ["Reading", "Listening to music", "Collecting stamps"]
}

/**
 * Use destructuting to log the following
*/
const printUserProfile = () => {
    const { name, designation, company, hobbies } = user;
    console.log(`${name} is a ${designation} at ${company}. He likes ${hobbies.join(', ')}.`);
};
printUserProfile()
