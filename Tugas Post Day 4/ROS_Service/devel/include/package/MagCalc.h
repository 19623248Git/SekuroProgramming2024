// Generated by gencpp from file package/MagCalc.msg
// DO NOT EDIT!


#ifndef PACKAGE_MESSAGE_MAGCALC_H
#define PACKAGE_MESSAGE_MAGCALC_H

#include <ros/service_traits.h>


#include <package/MagCalcRequest.h>
#include <package/MagCalcResponse.h>


namespace package
{

struct MagCalc
{

typedef MagCalcRequest Request;
typedef MagCalcResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MagCalc
} // namespace package


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::package::MagCalc > {
  static const char* value()
  {
    return "55d1a215f43fd1f64eb105a505b172c4";
  }

  static const char* value(const ::package::MagCalc&) { return value(); }
};

template<>
struct DataType< ::package::MagCalc > {
  static const char* value()
  {
    return "package/MagCalc";
  }

  static const char* value(const ::package::MagCalc&) { return value(); }
};


// service_traits::MD5Sum< ::package::MagCalcRequest> should match
// service_traits::MD5Sum< ::package::MagCalc >
template<>
struct MD5Sum< ::package::MagCalcRequest>
{
  static const char* value()
  {
    return MD5Sum< ::package::MagCalc >::value();
  }
  static const char* value(const ::package::MagCalcRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::package::MagCalcRequest> should match
// service_traits::DataType< ::package::MagCalc >
template<>
struct DataType< ::package::MagCalcRequest>
{
  static const char* value()
  {
    return DataType< ::package::MagCalc >::value();
  }
  static const char* value(const ::package::MagCalcRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::package::MagCalcResponse> should match
// service_traits::MD5Sum< ::package::MagCalc >
template<>
struct MD5Sum< ::package::MagCalcResponse>
{
  static const char* value()
  {
    return MD5Sum< ::package::MagCalc >::value();
  }
  static const char* value(const ::package::MagCalcResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::package::MagCalcResponse> should match
// service_traits::DataType< ::package::MagCalc >
template<>
struct DataType< ::package::MagCalcResponse>
{
  static const char* value()
  {
    return DataType< ::package::MagCalc >::value();
  }
  static const char* value(const ::package::MagCalcResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PACKAGE_MESSAGE_MAGCALC_H
