/**
* OpenAPI Petstore
* This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
*
* The version of the OpenAPI document: 1.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.client.models


import kotlinx.serialization.Serializable
import kotlinx.serialization.SerialName
import kotlinx.serialization.ContextualSerialization
import org.openapitools.client.infrastructure.SafeEnum
import org.openapitools.client.infrastructure.SafeEnum.Companion.UNKNOWN_VALUE
import org.openapitools.client.infrastructure.SafeEnumAdapter

/**
 * A tag for a pet
 * @param id 
 * @param name 
 */
@Serializable
data class Tag (
    @SerialName(value = "id")
    val id: kotlin.Long? = null,
    @SerialName(value = "name")
    val name: kotlin.String? = null
)

