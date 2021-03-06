#pragma ident "$Id: SimpleIURAWeight.cpp 1889 2009-05-11 15:47:23Z afarris $"

/**
 * @file SimpleIURAWeight.cpp
 * Class for assign weights to satellites based on their URA Index (IURA).
 */


//============================================================================
//
//  This file is part of GPSTk, the GPS Toolkit.
//
//  The GPSTk is free software; you can redistribute it and/or modify
//  it under the terms of the GNU Lesser General Public License as published
//  by the Free Software Foundation; either version 2.1 of the License, or
//  any later version.
//
//  The GPSTk is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public
//  License along with GPSTk; if not, write to the Free Software Foundation,
//  Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
//  
//  Dagoberto Salazar - gAGE. 2006
//
//============================================================================



#include "SimpleIURAWeight.hpp"

using namespace std;
namespace gpstk
{

    // Compute and return a vector with the weights for the given satellites
    // @param time           Epoch weights will be computed for
    // @param Satellites     Vector of satellites
    // @param bcEph          Satellite broadcast ephemeris
    //
    // @return
    //  Number of satellites with valid weights
    //
    // NOTE: Method isValid() will return false if some satellite does not have a
    // valid weight.
    //
    int SimpleIURAWeight::getWeights(DayTime& time, Vector<SatID>& Satellites, GPSEphemerisStore& bcEph) throw(InvalidWeights)
    {
        int N = Satellites.size();
        // We need at least one satellite
        if (N == 0)
        {
            InvalidWeights eWeight("At least one satellite is needed to compute weights.");
            GPSTK_THROW(eWeight);
        }

        int i, iura;
        double sigma;
        // Some std::vectors to hold temporal values (do not confuse with gpstk::Vector)
        vector<double> vWeight;
        vector<SatID> vAvailableSV;
        vector<SatID> vRejectedSV;
        EngEphemeris engEph;
        bool validFlag = true;

        for (i=0; i<N; i++)
        {
            try
            {
                engEph = bcEph.findEphemeris(Satellites(i), time);
                iura = engEph.getAccFlag();
            }
            catch(...)
            {
                // If there are problems, we skip this satellite
                vRejectedSV.push_back(Satellites(i));
                validFlag = false;      // Validity flag is set to false
                continue;
            }
            sigma = gpstk::ura2nominalAccuracy(iura);
            vWeight.push_back( 1.0 / (sigma*sigma) );
            vAvailableSV.push_back(Satellites(i));
        }

        valid = validFlag;
        weightsVector = vWeight;
        availableSV = vAvailableSV;
        rejectedSV = vRejectedSV;

        return (int)(availableSV.size());

    }


    // Compute and return a vector with the weights for the given satellites
    // @param time           Epoch weights will be computed for
    // @param Satellites     Vector of satellites
    // @param preciseEph     Satellite precise ephemeris
    //
    // @return
    //  Number of satellites with valid weights
    //
    // NOTE: Method isValid() will return false if some satellite does not have a
    // valid weight.
    //
    // NOTE: This method assigns an URA of 0.1 m to all satellites.
    //
    int SimpleIURAWeight::getWeights(DayTime& time, Vector<SatID>& Satellites, TabularEphemerisStore& preciseEph) throw(InvalidWeights)
    {
        int N = Satellites.size();
        // We need at least one satellite
        if (N == 0)
        {
            InvalidWeights eWeight("At least one satellite is needed to compute weights.");
            GPSTK_THROW(eWeight);
        }

        int i;
        // Some std::vectors to hold temporal values (do not confuse with gpstk::Vector)
        vector<double> vWeight;
        vector<SatID> vAvailableSV;
        vector<SatID> vRejectedSV;
        bool validFlag = true;

        for (i=0; i<N; i++)
        {
            try
            {
                preciseEph.getXvt(Satellites(i), time);
            }
            catch(...)
            {
                // If the satellite is not available, we skip it
                vRejectedSV.push_back(Satellites(i));
                validFlag = false;      // Validity flag is set to false
                continue;
            }
            // An URA of 0.1 m is assumed for all satellites, so sigma=0.1*0.1= 0.01 m^2
            vWeight.push_back( 100.0 );
            vAvailableSV.push_back(Satellites(i));
        }

        valid = validFlag;
        weightsVector = vWeight;
        availableSV = vAvailableSV;
        rejectedSV = vRejectedSV;

        return (int)(availableSV.size());

    }



  
}

