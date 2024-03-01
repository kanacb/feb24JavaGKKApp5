import dayjs from 'dayjs/esm';

import { IJobHistory, NewJobHistory } from './job-history.model';

export const sampleWithRequiredData: IJobHistory = {
  id: 26966,
};

export const sampleWithPartialData: IJobHistory = {
  id: 23412,
  startDate: dayjs('2024-02-29T09:44'),
  language: 'ENGLISH',
};

export const sampleWithFullData: IJobHistory = {
  id: 31007,
  startDate: dayjs('2024-02-29T18:34'),
  endDate: dayjs('2024-02-29T09:52'),
  language: 'SPANISH',
};

export const sampleWithNewData: NewJobHistory = {
  id: null,
};

Object.freeze(sampleWithNewData);
Object.freeze(sampleWithRequiredData);
Object.freeze(sampleWithPartialData);
Object.freeze(sampleWithFullData);
