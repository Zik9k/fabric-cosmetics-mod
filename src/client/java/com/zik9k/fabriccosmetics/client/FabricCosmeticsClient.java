package com.zik9k.fabriccosmetics.client;

import net.fabricmc.api.ClientModInitializer;
import net.fabricmc.fabric.api.client.rendering.v1.LivingEntityFeatureRendererRegistrationCallback;
import net.minecraft.client.render.entity.PlayerEntityRenderer;
import net.minecraft.entity.EntityType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class FabricCosmeticsClient implements ClientModInitializer {
    public static final Logger LOGGER = LoggerFactory.getLogger("fabriccosmetics-client");

    @Override
    public void onInitializeClient() {
        LOGGER.info("Fabric Cosmetics client loaded!");

        // Register a feature renderer on the player (hat / cosmetics layer)
        LivingEntityFeatureRendererRegistrationCallback.EVENT.register((entityType, renderer, registrationHelper) -> {
            if (entityType == EntityType.PLAYER && renderer instanceof PlayerEntityRenderer playerRenderer) {
                registrationHelper.register(new CosmeticFeatureRenderer(playerRenderer));
            }
        });
    }
}
