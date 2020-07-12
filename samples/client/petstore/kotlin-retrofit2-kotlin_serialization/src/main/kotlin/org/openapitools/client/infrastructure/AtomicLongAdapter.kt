package org.openapitools.client.infrastructure

import kotlinx.serialization.Decoder
import kotlinx.serialization.Encoder
import kotlinx.serialization.KSerializer
import kotlinx.serialization.PrimitiveDescriptor
import kotlinx.serialization.Serializer
import kotlinx.serialization.PrimitiveKind
import kotlinx.serialization.SerialDescriptor
import java.util.concurrent.atomic.AtomicLong

@Serializer(forClass = AtomicLong::class)
object AtomicLongAdapter : KSerializer<AtomicLong> {
    override fun serialize(encoder: Encoder, value: AtomicLong) {
        encoder.encodeLong(value.get())
    }

    override fun deserialize(decoder: Decoder): AtomicLong = AtomicLong(decoder.decodeLong())

    override val descriptor: SerialDescriptor = PrimitiveDescriptor("AtomicLong", PrimitiveKind.LONG)
}