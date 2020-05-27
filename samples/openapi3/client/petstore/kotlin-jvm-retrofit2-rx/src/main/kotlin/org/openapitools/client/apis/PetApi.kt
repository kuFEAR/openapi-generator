package org.openapitools.client.apis

import org.openapitools.client.infrastructure.CollectionFormats.*
import retrofit2.http.*
import okhttp3.RequestBody
import okhttp3.ResponseBody
import okhttp3.MultipartBody
import rx.Observable

import org.openapitools.client.models.ApiResponse
import org.openapitools.client.models.Pet

interface PetApi {

    @POST("pet")
    fun addPet(@Body pet: Pet): Observable<Unit>

    @DELETE("pet/{petId}")
    fun deletePet(@Path("petId") petId: kotlin.Long, @Header("api_key") apiKey: kotlin.String? = null): Observable<Unit>

    @GET("pet/findByStatus")
    fun findPetsByStatus(@Query("status") status: CSVParams): Observable<kotlin.collections.List<Pet>>

    @Deprecated("This api was deprecated")
    @GET("pet/findByTags")
    fun findPetsByTags(@Query("tags") tags: CSVParams): Observable<kotlin.collections.List<Pet>>

    @GET("pet/{petId}")
    fun getPetById(@Path("petId") petId: kotlin.Long): Observable<Pet>

    @PUT("pet")
    fun updatePet(@Body pet: Pet): Observable<Unit>

    @FormUrlEncoded
    @POST("pet/{petId}")
    fun updatePetWithForm(@Path("petId") petId: kotlin.Long, @Field("name") name: kotlin.String? = null, @Field("status") status: kotlin.String? = null): Observable<Unit>

    @Multipart
    @POST("pet/{petId}/uploadImage")
    fun uploadFile(@Path("petId") petId: kotlin.Long, @Part("additionalMetadata") additionalMetadata: kotlin.String? = null, @Part file: MultipartBody.Part? = null): Observable<ApiResponse>

    @Multipart
    @POST("fake/{petId}/uploadImageWithRequiredFile")
    fun uploadFileWithRequiredFile(@Path("petId") petId: kotlin.Long, @Part requiredFile: MultipartBody.Part, @Part("additionalMetadata") additionalMetadata: kotlin.String? = null): Observable<ApiResponse>

}
