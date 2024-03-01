import { ILocation, NewLocation } from './location.model';

export const sampleWithRequiredData: ILocation = {
  id: 21413,
};

export const sampleWithPartialData: ILocation = {
  id: 13587,
  streetAddress: 'pail',
  postalCode: 'extremely obvious sampan',
  city: 'West Jordan',
  stateProvince: 'oh straight strike',
};

export const sampleWithFullData: ILocation = {
  id: 32328,
  streetAddress: 'drat reparation feed',
  postalCode: 'impressionable crystallise meh',
  city: 'North Loraville',
  stateProvince: 'steamroller',
};

export const sampleWithNewData: NewLocation = {
  id: null,
};

Object.freeze(sampleWithNewData);
Object.freeze(sampleWithRequiredData);
Object.freeze(sampleWithPartialData);
Object.freeze(sampleWithFullData);
