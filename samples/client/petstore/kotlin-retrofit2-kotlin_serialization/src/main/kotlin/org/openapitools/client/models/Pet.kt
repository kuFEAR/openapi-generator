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

import org.openapitools.client.models.Category
import org.openapitools.client.models.Tag

import kotlinx.serialization.Serializable
import kotlinx.serialization.SerialName
import kotlinx.serialization.ContextualSerialization
import org.openapitools.client.infrastructure.SafeEnum
import org.openapitools.client.infrastructure.SafeEnum.Companion.UNKNOWN_VALUE
import org.openapitools.client.infrastructure.SafeEnumAdapter

/**
 * A pet for sale in the pet store
 * @param name 
 * @param photoUrls 
 * @param id 
 * @param category 
 * @param tags 
 * @param status pet status in the store
 */
@Serializable
data class Pet (
    @SerialName(value = "name")
    val name: kotlin.String,
    @SerialName(value = "photoUrls")
    val photoUrls: kotlin.collections.List<kotlin.String>,
    @SerialName(value = "id")
    val id: kotlin.Long? = null,
    @ContextualSerialization @SerialName(value = "category")
    val category: Category? = null,
    @ContextualSerialization @SerialName(value = "tags")
    val tags: kotlin.collections.List<Tag>? = null,
    /* pet status in the store */
    @SerialName(value = "status")
    val status: Pet.Status? = null
) {

    /**
     * pet status in the store
     * Values: available,pending,sold,unknown_value
     */
    @Serializable(with = Status.Serializer::class)
    enum class Status(override val serialName: kotlin.String) : SafeEnum {
        @SerialName(value = "available") available("available"),
        @SerialName(value = "pending") pending("pending"),
        @SerialName(value = "sold") sold("sold"),
        UNKNOWN(UNKNOWN_VALUE);
        object Serializer : SafeEnumAdapter<Status>(Status::class)
    }
}

