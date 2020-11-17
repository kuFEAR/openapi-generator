{-
   OpenAPI Petstore

   This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

   OpenAPI Version: 3.0.1
   OpenAPI Petstore API version: 1.0.0
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : OpenAPIPetstore.API.Fake
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module OpenAPIPetstore.API.Fake where

import OpenAPIPetstore.Core
import OpenAPIPetstore.MimeTypes
import OpenAPIPetstore.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** Fake

-- *** createXmlItem

-- | @POST \/fake\/create_xml_item@
-- 
-- creates an XmlItem
-- 
-- this route creates an XmlItem
-- 
createXmlItem 
  :: (Consumes CreateXmlItem contentType, MimeRender contentType XmlItem)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> XmlItem -- ^ "xmlItem" -  XmlItem Body
  -> OpenAPIPetstoreRequest CreateXmlItem contentType NoContent MimeNoContent
createXmlItem _ xmlItem =
  _mkRequest "POST" ["/fake/create_xml_item"]
    `setBodyParam` xmlItem

data CreateXmlItem 

-- | /Body Param/ "XmlItem" - XmlItem Body
instance HasBodyParam CreateXmlItem XmlItem 

-- | @application/xml@
instance Consumes CreateXmlItem MimeXML
-- | @text/xml@
instance Consumes CreateXmlItem MimeTextXml
-- | @text/xml; charset=utf-8@
instance Consumes CreateXmlItem MimeTextXmlCharsetutf8
-- | @text/xml; charset=utf-16@
instance Consumes CreateXmlItem MimeTextXmlCharsetutf16
-- | @application/xml; charset=utf-8@
instance Consumes CreateXmlItem MimeXmlCharsetutf8
-- | @application/xml; charset=utf-16@
instance Consumes CreateXmlItem MimeXmlCharsetutf16

instance Produces CreateXmlItem MimeNoContent


-- *** fakeOuterBooleanSerialize

-- | @POST \/fake\/outer\/boolean@
-- 
-- Test serialization of outer boolean types
-- 
fakeOuterBooleanSerialize 
  :: (Consumes FakeOuterBooleanSerialize contentType)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> OpenAPIPetstoreRequest FakeOuterBooleanSerialize contentType Bool accept
fakeOuterBooleanSerialize _  _ =
  _mkRequest "POST" ["/fake/outer/boolean"]

data FakeOuterBooleanSerialize 

-- | /Body Param/ "body" - Input boolean as post body
instance HasBodyParam FakeOuterBooleanSerialize BodyBool 
    
-- | @*/*@
instance MimeType mtype => Consumes FakeOuterBooleanSerialize mtype

-- | @*/*@
instance MimeType mtype => Produces FakeOuterBooleanSerialize mtype


-- *** fakeOuterCompositeSerialize

-- | @POST \/fake\/outer\/composite@
-- 
-- Test serialization of object with outer number type
-- 
fakeOuterCompositeSerialize 
  :: (Consumes FakeOuterCompositeSerialize contentType)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> OpenAPIPetstoreRequest FakeOuterCompositeSerialize contentType OuterComposite accept
fakeOuterCompositeSerialize _  _ =
  _mkRequest "POST" ["/fake/outer/composite"]

data FakeOuterCompositeSerialize 

-- | /Body Param/ "body" - Input composite as post body
instance HasBodyParam FakeOuterCompositeSerialize OuterComposite 
    
-- | @*/*@
instance MimeType mtype => Consumes FakeOuterCompositeSerialize mtype

-- | @*/*@
instance MimeType mtype => Produces FakeOuterCompositeSerialize mtype


-- *** fakeOuterNumberSerialize

-- | @POST \/fake\/outer\/number@
-- 
-- Test serialization of outer number types
-- 
fakeOuterNumberSerialize 
  :: (Consumes FakeOuterNumberSerialize contentType)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> OpenAPIPetstoreRequest FakeOuterNumberSerialize contentType Double accept
fakeOuterNumberSerialize _  _ =
  _mkRequest "POST" ["/fake/outer/number"]

data FakeOuterNumberSerialize 

-- | /Body Param/ "body" - Input number as post body
instance HasBodyParam FakeOuterNumberSerialize BodyDouble 
    
-- | @*/*@
instance MimeType mtype => Consumes FakeOuterNumberSerialize mtype

-- | @*/*@
instance MimeType mtype => Produces FakeOuterNumberSerialize mtype


-- *** fakeOuterStringSerialize

-- | @POST \/fake\/outer\/string@
-- 
-- Test serialization of outer string types
-- 
fakeOuterStringSerialize 
  :: (Consumes FakeOuterStringSerialize contentType)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> OpenAPIPetstoreRequest FakeOuterStringSerialize contentType Text accept
fakeOuterStringSerialize _  _ =
  _mkRequest "POST" ["/fake/outer/string"]

data FakeOuterStringSerialize 

-- | /Body Param/ "body" - Input string as post body
instance HasBodyParam FakeOuterStringSerialize BodyText 
    
-- | @*/*@
instance MimeType mtype => Consumes FakeOuterStringSerialize mtype

-- | @*/*@
instance MimeType mtype => Produces FakeOuterStringSerialize mtype


-- *** testBodyWithFileSchema

-- | @PUT \/fake\/body-with-file-schema@
-- 
-- For this test, the body for this request much reference a schema named `File`.
-- 
testBodyWithFileSchema 
  :: (Consumes TestBodyWithFileSchema MimeJSON, MimeRender MimeJSON FileSchemaTestClass)
  => FileSchemaTestClass -- ^ "body"
  -> OpenAPIPetstoreRequest TestBodyWithFileSchema MimeJSON NoContent MimeNoContent
testBodyWithFileSchema body =
  _mkRequest "PUT" ["/fake/body-with-file-schema"]
    `setBodyParam` body

data TestBodyWithFileSchema 
instance HasBodyParam TestBodyWithFileSchema FileSchemaTestClass 

-- | @application/json@
instance Consumes TestBodyWithFileSchema MimeJSON

instance Produces TestBodyWithFileSchema MimeNoContent


-- *** testBodyWithQueryParams

-- | @PUT \/fake\/body-with-query-params@
-- 
testBodyWithQueryParams 
  :: (Consumes TestBodyWithQueryParams MimeJSON, MimeRender MimeJSON User)
  => User -- ^ "body"
  -> Query -- ^ "query"
  -> OpenAPIPetstoreRequest TestBodyWithQueryParams MimeJSON NoContent MimeNoContent
testBodyWithQueryParams body (Query query) =
  _mkRequest "PUT" ["/fake/body-with-query-params"]
    `setBodyParam` body
    `addQuery` toQuery ("query", Just query)

data TestBodyWithQueryParams 
instance HasBodyParam TestBodyWithQueryParams User 

-- | @application/json@
instance Consumes TestBodyWithQueryParams MimeJSON

instance Produces TestBodyWithQueryParams MimeNoContent


-- *** testClientModel

-- | @PATCH \/fake@
-- 
-- To test \"client\" model
-- 
-- To test \"client\" model
-- 
testClientModel 
  :: (Consumes TestClientModel MimeJSON, MimeRender MimeJSON Client)
  => Client -- ^ "body" -  client model
  -> OpenAPIPetstoreRequest TestClientModel MimeJSON Client MimeJSON
testClientModel body =
  _mkRequest "PATCH" ["/fake"]
    `setBodyParam` body

data TestClientModel 

-- | /Body Param/ "body" - client model
instance HasBodyParam TestClientModel Client 

-- | @application/json@
instance Consumes TestClientModel MimeJSON

-- | @application/json@
instance Produces TestClientModel MimeJSON


-- *** testEndpointParameters

-- | @POST \/fake@
-- 
-- Fake endpoint for testing various parameters  假端點  偽のエンドポイント  가짜 엔드 포인트
-- 
-- Fake endpoint for testing various parameters  假端點  偽のエンドポイント  가짜 엔드 포인트
-- 
-- AuthMethod: 'AuthBasicHttpBasicTest'
-- 
testEndpointParameters 
  :: (Consumes TestEndpointParameters MimeFormUrlEncoded)
  => Number -- ^ "number" -  None
  -> ParamDouble -- ^ "double" -  None
  -> PatternWithoutDelimiter -- ^ "patternWithoutDelimiter" -  None
  -> Byte -- ^ "byte" -  None
  -> OpenAPIPetstoreRequest TestEndpointParameters MimeFormUrlEncoded NoContent MimeNoContent
testEndpointParameters (Number number) (ParamDouble double) (PatternWithoutDelimiter patternWithoutDelimiter) (Byte byte) =
  _mkRequest "POST" ["/fake"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicHttpBasicTest)
    `addForm` toForm ("number", number)
    `addForm` toForm ("double", double)
    `addForm` toForm ("pattern_without_delimiter", patternWithoutDelimiter)
    `addForm` toForm ("byte", byte)

data TestEndpointParameters  

-- | /Optional Param/ "integer" - None
instance HasOptionalParam TestEndpointParameters ParamInteger where
  applyOptionalParam req (ParamInteger xs) =
    req `addForm` toForm ("integer", xs)

-- | /Optional Param/ "int32" - None
instance HasOptionalParam TestEndpointParameters Int32 where
  applyOptionalParam req (Int32 xs) =
    req `addForm` toForm ("int32", xs)

-- | /Optional Param/ "int64" - None
instance HasOptionalParam TestEndpointParameters Int64 where
  applyOptionalParam req (Int64 xs) =
    req `addForm` toForm ("int64", xs)

-- | /Optional Param/ "float" - None
instance HasOptionalParam TestEndpointParameters ParamFloat where
  applyOptionalParam req (ParamFloat xs) =
    req `addForm` toForm ("float", xs)

-- | /Optional Param/ "string" - None
instance HasOptionalParam TestEndpointParameters ParamString where
  applyOptionalParam req (ParamString xs) =
    req `addForm` toForm ("string", xs)

-- | /Optional Param/ "binary" - None
instance HasOptionalParam TestEndpointParameters ParamBinary where
  applyOptionalParam req (ParamBinary xs) =
    req `_addMultiFormPart` NH.partFileSource "binary" xs

-- | /Optional Param/ "date" - None
instance HasOptionalParam TestEndpointParameters ParamDate where
  applyOptionalParam req (ParamDate xs) =
    req `addForm` toForm ("date", xs)

-- | /Optional Param/ "dateTime" - None
instance HasOptionalParam TestEndpointParameters ParamDateTime where
  applyOptionalParam req (ParamDateTime xs) =
    req `addForm` toForm ("dateTime", xs)

-- | /Optional Param/ "password" - None
instance HasOptionalParam TestEndpointParameters Password where
  applyOptionalParam req (Password xs) =
    req `addForm` toForm ("password", xs)

-- | /Optional Param/ "callback" - None
instance HasOptionalParam TestEndpointParameters Callback where
  applyOptionalParam req (Callback xs) =
    req `addForm` toForm ("callback", xs)

-- | @application/x-www-form-urlencoded@
instance Consumes TestEndpointParameters MimeFormUrlEncoded

instance Produces TestEndpointParameters MimeNoContent


-- *** testEnumParameters

-- | @GET \/fake@
-- 
-- To test enum parameters
-- 
-- To test enum parameters
-- 
testEnumParameters 
  :: (Consumes TestEnumParameters MimeFormUrlEncoded)
  => OpenAPIPetstoreRequest TestEnumParameters MimeFormUrlEncoded NoContent MimeNoContent
testEnumParameters =
  _mkRequest "GET" ["/fake"]

data TestEnumParameters  

-- | /Optional Param/ "enum_form_string_array" - Form parameter enum test (string array)
instance HasOptionalParam TestEnumParameters EnumFormStringArray where
  applyOptionalParam req (EnumFormStringArray xs) =
    req `addForm` toFormColl CommaSeparated ("enum_form_string_array", xs)

-- | /Optional Param/ "enum_form_string" - Form parameter enum test (string)
instance HasOptionalParam TestEnumParameters EnumFormString where
  applyOptionalParam req (EnumFormString xs) =
    req `addForm` toForm ("enum_form_string", xs)

-- | /Optional Param/ "enum_header_string_array" - Header parameter enum test (string array)
instance HasOptionalParam TestEnumParameters EnumHeaderStringArray where
  applyOptionalParam req (EnumHeaderStringArray xs) =
    req `addHeader` toHeaderColl CommaSeparated ("enum_header_string_array", xs)

-- | /Optional Param/ "enum_header_string" - Header parameter enum test (string)
instance HasOptionalParam TestEnumParameters EnumHeaderString where
  applyOptionalParam req (EnumHeaderString xs) =
    req `addHeader` toHeader ("enum_header_string", xs)

-- | /Optional Param/ "enum_query_string_array" - Query parameter enum test (string array)
instance HasOptionalParam TestEnumParameters EnumQueryStringArray where
  applyOptionalParam req (EnumQueryStringArray xs) =
    req `addQuery` toQueryColl CommaSeparated ("enum_query_string_array", Just xs)

-- | /Optional Param/ "enum_query_string" - Query parameter enum test (string)
instance HasOptionalParam TestEnumParameters EnumQueryString where
  applyOptionalParam req (EnumQueryString xs) =
    req `addQuery` toQuery ("enum_query_string", Just xs)

-- | /Optional Param/ "enum_query_integer" - Query parameter enum test (double)
instance HasOptionalParam TestEnumParameters EnumQueryInteger where
  applyOptionalParam req (EnumQueryInteger xs) =
    req `addQuery` toQuery ("enum_query_integer", Just xs)

-- | /Optional Param/ "enum_query_double" - Query parameter enum test (double)
instance HasOptionalParam TestEnumParameters EnumQueryDouble where
  applyOptionalParam req (EnumQueryDouble xs) =
    req `addQuery` toQuery ("enum_query_double", Just xs)

-- | @application/x-www-form-urlencoded@
instance Consumes TestEnumParameters MimeFormUrlEncoded

instance Produces TestEnumParameters MimeNoContent


-- *** testGroupParameters

-- | @DELETE \/fake@
-- 
-- Fake endpoint to test group parameters (optional)
-- 
-- Fake endpoint to test group parameters (optional)
-- 
testGroupParameters 
  :: RequiredStringGroup -- ^ "requiredStringGroup" -  Required String in group parameters
  -> RequiredBooleanGroup -- ^ "requiredBooleanGroup" -  Required Boolean in group parameters
  -> RequiredInt64Group -- ^ "requiredInt64Group" -  Required Integer in group parameters
  -> OpenAPIPetstoreRequest TestGroupParameters MimeNoContent NoContent MimeNoContent
testGroupParameters (RequiredStringGroup requiredStringGroup) (RequiredBooleanGroup requiredBooleanGroup) (RequiredInt64Group requiredInt64Group) =
  _mkRequest "DELETE" ["/fake"]
    `addQuery` toQuery ("required_string_group", Just requiredStringGroup)
    `addHeader` toHeader ("required_boolean_group", requiredBooleanGroup)
    `addQuery` toQuery ("required_int64_group", Just requiredInt64Group)

data TestGroupParameters  

-- | /Optional Param/ "string_group" - String in group parameters
instance HasOptionalParam TestGroupParameters StringGroup where
  applyOptionalParam req (StringGroup xs) =
    req `addQuery` toQuery ("string_group", Just xs)

-- | /Optional Param/ "boolean_group" - Boolean in group parameters
instance HasOptionalParam TestGroupParameters BooleanGroup where
  applyOptionalParam req (BooleanGroup xs) =
    req `addHeader` toHeader ("boolean_group", xs)

-- | /Optional Param/ "int64_group" - Integer in group parameters
instance HasOptionalParam TestGroupParameters Int64Group where
  applyOptionalParam req (Int64Group xs) =
    req `addQuery` toQuery ("int64_group", Just xs)
instance Produces TestGroupParameters MimeNoContent


-- *** testInlineAdditionalProperties

-- | @POST \/fake\/inline-additionalProperties@
-- 
-- test inline additionalProperties
-- 
testInlineAdditionalProperties 
  :: (Consumes TestInlineAdditionalProperties MimeJSON, MimeRender MimeJSON ParamMapMapStringText)
  => ParamMapMapStringText -- ^ "param" -  request body
  -> OpenAPIPetstoreRequest TestInlineAdditionalProperties MimeJSON NoContent MimeNoContent
testInlineAdditionalProperties param =
  _mkRequest "POST" ["/fake/inline-additionalProperties"]
    `setBodyParam` param

data TestInlineAdditionalProperties 

-- | /Body Param/ "param" - request body
instance HasBodyParam TestInlineAdditionalProperties ParamMapMapStringText 

-- | @application/json@
instance Consumes TestInlineAdditionalProperties MimeJSON

instance Produces TestInlineAdditionalProperties MimeNoContent


-- *** testJsonFormData

-- | @GET \/fake\/jsonFormData@
-- 
-- test json serialization of form data
-- 
testJsonFormData 
  :: (Consumes TestJsonFormData MimeFormUrlEncoded)
  => Param -- ^ "param" -  field1
  -> Param2 -- ^ "param2" -  field2
  -> OpenAPIPetstoreRequest TestJsonFormData MimeFormUrlEncoded NoContent MimeNoContent
testJsonFormData (Param param) (Param2 param2) =
  _mkRequest "GET" ["/fake/jsonFormData"]
    `addForm` toForm ("param", param)
    `addForm` toForm ("param2", param2)

data TestJsonFormData  

-- | @application/x-www-form-urlencoded@
instance Consumes TestJsonFormData MimeFormUrlEncoded

instance Produces TestJsonFormData MimeNoContent


-- *** testQueryParameterCollectionFormat

-- | @PUT \/fake\/test-query-paramters@
-- 
-- To test the collection format in query parameters
-- 
testQueryParameterCollectionFormat 
  :: Pipe -- ^ "pipe"
  -> Ioutil -- ^ "ioutil"
  -> Http -- ^ "http"
  -> Url -- ^ "url"
  -> Context -- ^ "context"
  -> OpenAPIPetstoreRequest TestQueryParameterCollectionFormat MimeNoContent NoContent MimeNoContent
testQueryParameterCollectionFormat (Pipe pipe) (Ioutil ioutil) (Http http) (Url url) (Context context) =
  _mkRequest "PUT" ["/fake/test-query-paramters"]
    `addQuery` toQueryColl CommaSeparated ("pipe", Just pipe)
    `addQuery` toQueryColl CommaSeparated ("ioutil", Just ioutil)
    `addQuery` toQueryColl SpaceSeparated ("http", Just http)
    `addQuery` toQueryColl CommaSeparated ("url", Just url)
    `addQuery` toQueryColl MultiParamArray ("context", Just context)

data TestQueryParameterCollectionFormat  
instance Produces TestQueryParameterCollectionFormat MimeNoContent

