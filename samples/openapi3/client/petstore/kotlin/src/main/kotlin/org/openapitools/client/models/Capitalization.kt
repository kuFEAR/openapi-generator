/**
* OpenAPI Petstore
* This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
*
* The version of the OpenAPI document: 1.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.client.models


import com.squareup.moshi.Json
import java.io.Serializable

/**
 * 
 * @param smallCamel 
 * @param capitalCamel 
 * @param smallSnake 
 * @param capitalSnake 
 * @param scAETHFlowPoints 
 * @param ATT_NAME Name of the pet 
 */

data class Capitalization (
    @Json(name = "smallCamel")
    val smallCamel: kotlin.String? = null,
    @Json(name = "CapitalCamel")
    val capitalCamel: kotlin.String? = null,
    @Json(name = "small_Snake")
    val smallSnake: kotlin.String? = null,
    @Json(name = "Capital_Snake")
    val capitalSnake: kotlin.String? = null,
    @Json(name = "SCA_ETH_Flow_Points")
    val scAETHFlowPoints: kotlin.String? = null,
    /* Name of the pet  */
    @Json(name = "ATT_NAME")
    val ATT_NAME: kotlin.String? = null
) : Serializable {
	companion object {
		private const val serialVersionUID: Long = 123
	}

}

