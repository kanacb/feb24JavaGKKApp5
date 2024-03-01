import { IDepartment, NewDepartment } from './department.model';

export const sampleWithRequiredData: IDepartment = {
  id: 15000,
  departmentName: 'ack except because',
};

export const sampleWithPartialData: IDepartment = {
  id: 1318,
  departmentName: 'uh-huh',
};

export const sampleWithFullData: IDepartment = {
  id: 26398,
  departmentName: 'neighboring',
};

export const sampleWithNewData: NewDepartment = {
  departmentName: 'past',
  id: null,
};

Object.freeze(sampleWithNewData);
Object.freeze(sampleWithRequiredData);
Object.freeze(sampleWithPartialData);
Object.freeze(sampleWithFullData);
