import dayjs from 'dayjs/esm';

import { IEmployee, NewEmployee } from './employee.model';

export const sampleWithRequiredData: IEmployee = {
  id: 3980,
};

export const sampleWithPartialData: IEmployee = {
  id: 29453,
  lastName: 'Robel',
  hireDate: dayjs('2024-02-29T10:41'),
};

export const sampleWithFullData: IEmployee = {
  id: 18879,
  firstName: 'Evie',
  lastName: 'Tillman',
  email: 'Domenick_Kling26@hotmail.com',
  phoneNumber: 'frizzy',
  hireDate: dayjs('2024-02-29T14:12'),
  salary: 16433,
  commissionPct: 25333,
};

export const sampleWithNewData: NewEmployee = {
  id: null,
};

Object.freeze(sampleWithNewData);
Object.freeze(sampleWithRequiredData);
Object.freeze(sampleWithPartialData);
Object.freeze(sampleWithFullData);
