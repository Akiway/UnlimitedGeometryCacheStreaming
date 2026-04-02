public class UnlimitedGeometryCacheStreamingService extends ScriptableService {

    private cb func OnInitialize() {
        GameInstance.GetCallbackSystem()
            .RegisterCallback(n"Resource/PostLoad", this, n"OnGeoCacheLoad")
            .AddTarget(ResourceTarget.Type(NameOf<physicsGeometryCache>()));
    }

    private cb func OnGeoCacheLoad(event: ref<ResourceEvent>) {
        let cache: ref<physicsGeometryCache> = event.GetResource() as physicsGeometryCache;
        UnlimitedGeometryCacheStreamingNative.OnGeoCachePostLoad(cache);
    }
}

public static native class UnlimitedGeometryCacheStreamingNative extends IScriptable {
    public static native func OnGeoCachePostLoad(cache: ref<physicsGeometryCache>) -> Void;
}
