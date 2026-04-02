#pragma once

#include "RED4ext/RTTISystem.hpp"
#include "RED4ext/Scripting/IScriptable.hpp"
#include "RED4ext/Scripting/Stack.hpp"

namespace UnlimitedGeometryCacheStreaming
{

class UnlimitedGeometryCacheStreaming : RED4ext::IScriptable
{
public:
    static void OnGeoCachePostLoad(RED4ext::IScriptable* aContext, RED4ext::CStackFrame* aFrame, RED4ext::CString* aOut,
                          int64_t a4);
    RED4ext::CClass* GetNativeType();
};

}
