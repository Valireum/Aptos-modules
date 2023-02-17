module VLMCoin::vlm_coin {
    struct VLMCoin {}

    fun init_module(sender: &signer): (BurnCapability<VLMCoin>, MintCapability<VLMCoin>){
        aptos_framework::managed_coin::initialize<VLMCoin>(
            sender,
            b"VLM Coin",
            b"VLM",
            8,
            true,
        );
    }
}