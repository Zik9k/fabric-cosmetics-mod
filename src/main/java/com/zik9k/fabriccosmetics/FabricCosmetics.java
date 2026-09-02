package com.zik9k.fabriccosmetics;

import net.fabricmc.api.ModInitializer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class FabricCosmetics implements ModInitializer {
    public static final String MOD_ID = "fabriccosmetics";
    public static final Logger LOGGER = LoggerFactory.getLogger(MOD_ID);

    @Override
    public void onInitialize() {
        LOGGER.info("Fabric Cosmetics loaded!");
    }
}
