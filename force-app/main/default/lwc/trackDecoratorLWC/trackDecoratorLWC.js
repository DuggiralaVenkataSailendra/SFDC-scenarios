import { LightningElement, track } from 'lwc';

export default class TrackDecoratorLWC extends LightningElement {

    @track user = {
        name: 'World'
    };

    todoList = [];
    newTask = '';

    handleNameChange(event) {
        this.user.name = event.target.value;
    }

    handleChange(event) {
        this.newTask = event.target.value;
    }

    addTaskToDolist() {
        this.todoList = [...this.todoList, this.newTask];
        this.newTask = '';
        console.log('To Do list:', this.todoList);
    }
}