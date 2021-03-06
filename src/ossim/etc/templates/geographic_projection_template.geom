//---------------------------------------------------------------------
// $Id: geographic_projection_template.geom 9465 2006-08-28 18:53:59Z dburken $
//
// Description:
// This is a keyword list with minimum set of key words to make an
// ossimEquDistCylProjection (commonly called geographic).
//
// NOTE:
// If decimal_degrees_per_pixel_lat equals decimal_degrees_per_pixel_lon then
// your origin_latitude should be 0.0 or at the equator.  If not, the
// decimal_degrees_per_pixel_lon =
// decimal_degrees_per_pixel_lat * cos(fabs(origin_latitude))
//---------------------------------------------------------------------
central_meridian:  -89.875153888888889
datum:  WGE
ellipse_code:  WE
ellipse_name:  WGS 84
false_easting_northing:  ( 0.000000000000000, 0.000000000000000 )
false_easting_northing_units:  meters
major_axis:  6378137.000000000000000
minor_axis:  6356752.314199999906123
origin_latitude:  41.764721222222221
pixel_scale_units:  degrees
pixel_scale_xy:  ( 0.006790544118047, 0.005064973575493 )

// point(tie center of pixel) or area (tie upper left corner of pixel).
pixel_type:  point

tie_point_units:  degrees
tie_point_xy:  ( -91.416731292574454, 42.792911858047304 )

type:  ossimEquDistCylProjection

