//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <human_avatar/human_avatar_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) human_avatar_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "HumanAvatarPlugin");
  human_avatar_plugin_register_with_registrar(human_avatar_registrar);
}
