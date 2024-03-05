import { v4 as uuidv4 } from 'uuid';

export default class{
    constructor(name, age){
        this.id = uuidv4();
        this.name = name;
        this.age = age
    }
}