import { IRegion, NewRegion } from './region.model';

export const sampleWithRequiredData: IRegion = {
  id: 17532,
};

export const sampleWithPartialData: IRegion = {
  id: 14629,
  regionName: 'canine majestically',
};

export const sampleWithFullData: IRegion = {
  id: 4343,
  regionName: 'green yuck reassuringly',
};

export const sampleWithNewData: NewRegion = {
  id: null,
};

Object.freeze(sampleWithNewData);
Object.freeze(sampleWithRequiredData);
Object.freeze(sampleWithPartialData);
Object.freeze(sampleWithFullData);
