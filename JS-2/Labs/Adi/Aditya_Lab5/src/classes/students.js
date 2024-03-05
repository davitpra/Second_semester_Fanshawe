import Person  from "./person.js";

export default class extends Person{
    constructor(name, age, grades){
        super(name, age),
        this.grades = grades
    }
}