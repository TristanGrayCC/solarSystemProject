import React from 'react';
import ApiRequestHelper from '../helpers/apiRequestHelper'

const InformationTab = () => {
  return (
    <div className = 'information-tab'>
      <p>All planet sizes are to scale with the sun as shown. The speed of the planet's orbits is days mapped to seconds and square rooted. The distances from the sun are thousands of Kms mapped to pixels and square rooted.</p>
    </div>
  );
}

export default InformationTab;
