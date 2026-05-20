import { LightningElement } from 'lwc';

export default class EmployeeWelcome extends LightningElement {

    employeeName = 'New Employee';

    handleChange(event) {
        this.employeeName = event.target.value;
    }

    showMessage() {
        alert(`Welcome ${this.employeeName}!`);
    }
}