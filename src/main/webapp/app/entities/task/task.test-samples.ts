import { ITask, NewTask } from './task.model';

export const sampleWithRequiredData: ITask = {
  id: 18967,
};

export const sampleWithPartialData: ITask = {
  id: 18575,
  description: 'absent onto',
};

export const sampleWithFullData: ITask = {
  id: 24170,
  title: 'excitedly',
  description: 'bold unless',
};

export const sampleWithNewData: NewTask = {
  id: null,
};

Object.freeze(sampleWithNewData);
Object.freeze(sampleWithRequiredData);
Object.freeze(sampleWithPartialData);
Object.freeze(sampleWithFullData);
