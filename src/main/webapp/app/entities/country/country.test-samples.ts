import { ICountry, NewCountry } from './country.model';

export const sampleWithRequiredData: ICountry = {
  id: 7442,
};

export const sampleWithPartialData: ICountry = {
  id: 14031,
};

export const sampleWithFullData: ICountry = {
  id: 23511,
  countryName: 'llama tangible affair',
};

export const sampleWithNewData: NewCountry = {
  id: null,
};

Object.freeze(sampleWithNewData);
Object.freeze(sampleWithRequiredData);
Object.freeze(sampleWithPartialData);
Object.freeze(sampleWithFullData);
