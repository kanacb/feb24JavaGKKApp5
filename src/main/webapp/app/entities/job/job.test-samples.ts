import { IJob, NewJob } from './job.model';

export const sampleWithRequiredData: IJob = {
  id: 3204,
};

export const sampleWithPartialData: IJob = {
  id: 16583,
  jobTitle: 'Future Configuration Developer',
  minSalary: 26868,
  maxSalary: 24207,
};

export const sampleWithFullData: IJob = {
  id: 3637,
  jobTitle: 'District Division Engineer',
  minSalary: 16586,
  maxSalary: 31469,
};

export const sampleWithNewData: NewJob = {
  id: null,
};

Object.freeze(sampleWithNewData);
Object.freeze(sampleWithRequiredData);
Object.freeze(sampleWithPartialData);
Object.freeze(sampleWithFullData);
