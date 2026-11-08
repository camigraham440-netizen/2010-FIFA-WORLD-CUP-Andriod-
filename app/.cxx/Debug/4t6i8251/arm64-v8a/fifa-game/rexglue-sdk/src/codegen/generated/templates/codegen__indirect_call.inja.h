// Auto-generated from resources/templates/codegen/_indirect_call.inja -- DO NOT EDIT
#pragma once
#include <string_view>

namespace rex::codegen::embedded {
inline constexpr std::string_view codegen__indirect_call = R"__TMPL__(//=============================================================================
// Indirect Call Dispatch
// Resolve through the runtime: function tables are independent of XEX images.
// The dispatcher handles calls across all loaded modules.
//
// Fast path: Memory::InitializeFunctionTable places the table of the module
// loaded at code base 0x82610000 (FIFA Street's fifadllzf.xex.dll) right after
// its image (FIFA_TABLE_FIX), where the SDK's original per-module lookup
// expects it. Every other module has a dynamically allocated table, so it
// keeps the dispatcher call. Out-of-range targets and empty slots also fall
// back to the dispatcher, which is what the slow path always did.
//=============================================================================

#ifdef REXGLUE_ENABLE_PROFILING
#include <rex/perf/counter.h>
#define REX_PROFILE_INDIRECT_DISPATCH() PROFILE_FUNCTION_DISPATCHED()
#else
#define REX_PROFILE_INDIRECT_DISPATCH()
#endif

#define REX_LOOKUP_FUNC(x, y) \
  rex::runtime::ResolveIndirectFunction(static_cast<uint32_t>(y))

#if REX_CODE_BASE == 0x82610000ull
#define REX_CALL_INDIRECT_FUNC(x)                                                          \
  do {                                                                                     \
    REX_PROFILE_INDIRECT_DISPATCH();                                                       \
    uint32_t rex_indirect_target_ = static_cast<uint32_t>(x);                              \
    ctx.last_indirect_target = rex_indirect_target_;                                       \
    PPCFunc* rex_indirect_func_ = nullptr;                                                 \
    if ((uint32_t)(rex_indirect_target_ - REX_CODE_BASE) <                                 \
        REX_CODE_SIZE + REX_THUNK_RESERVE_SIZE) [[likely]] {                               \
      rex_indirect_func_ =                                                                 \
          *(PPCFunc**)(base + REX_IMAGE_BASE + REX_IMAGE_SIZE +                            \
                       (u64(rex_indirect_target_ - REX_CODE_BASE) * 2));                   \
    }                                                                                      \
    if (!rex_indirect_func_) [[unlikely]] {                                                \
      rex_indirect_func_ = REX_LOOKUP_FUNC(base, rex_indirect_target_);                    \
    }                                                                                      \
    rex_indirect_func_(ctx, base);                                                         \
  } while (0)
#else
#define REX_CALL_INDIRECT_FUNC(x)                                      \
  do {                                                                \
    REX_PROFILE_INDIRECT_DISPATCH();                                   \
    uint32_t rex_indirect_target_ = static_cast<uint32_t>(x);           \
    ctx.last_indirect_target = rex_indirect_target_;                    \
    PPCFunc* rex_indirect_func_ =                                      \
        REX_LOOKUP_FUNC(base, rex_indirect_target_);                    \
    rex_indirect_func_(ctx, base);                                     \
  } while (0)
#endif
)__TMPL__";
}  // namespace rex::codegen::embedded
