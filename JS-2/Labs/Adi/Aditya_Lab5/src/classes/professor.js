import Person from "./person.js";

export default class extends Person{
    constructor(name, age, course){
        super(name, age),
        this.course = course
    }
}
console.log(Person);