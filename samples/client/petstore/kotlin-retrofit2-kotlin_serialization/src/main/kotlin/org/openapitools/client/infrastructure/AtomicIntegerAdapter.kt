package org.openapitools.client.infrastructure

import kotlinx.serialization.Decoder
import kotlinx.serialization.Encoder
import kotlinx.serialization.KSerializer
import kotlinx.serialization.PrimitiveDescriptor
import kotlinx.serialization.Serializer
import kotlinx.serialization.PrimitiveKind
import kotlinx.serialization.SerialDescriptor
import java.util.concurrent.atomic.AtomicInteger

@Serializer(forClass = AtomicInteger::class)
object AtomicIntegerAdapter : KSerializer<AtomicInteger> {
    override fun serialize(encoder: Encoder, value: AtomicInteger) {
        encoder.encodeInt(value.get())
    }

    override fun deserialize(decoder: Decoder): AtomicInteger = AtomicInteger(decoder.decodeInt())

    override val descriptor: SerialDescriptor = PrimitiveDescriptor("AtomicInteger", PrimitiveKind.INT)
}