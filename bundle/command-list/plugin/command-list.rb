CommandList::register_list(
  :name  => 'Align',
  :map   =>'<Space>a',
  :map_item_with_list => true,
  :items => [
    {
      :function    => ":!~/.vim/scripts/aligner.rb '=' -",
      :map         => 'e',
      :text        => '[e]qual               =',
      :visual_mode => true,
    },
    {
      :function    => ":!~/.vim/scripts/aligner.rb '==' -",
      :map         => '=',
      :text        => '[=]=               ==',
      :visual_mode => true,
    },
    {
      :function    => ":!~/.vim/scripts/aligner.rb '|' -",
      :map         => 'p',
      :text        => '[p]ipe                |',
      :visual_mode => true,
    },
    {
      :function    => ":!~/.vim/scripts/aligner.rb '[' -",
      :map         => 's',
      :text        => '[s]quare              [',
      :visual_mode => true,
    },
    {
      :function    => ":!~/.vim/scripts/aligner.rb ']' -",
      :map         => 'xs',
      :text        => '[x]close [s]quare     ]',
      :visual_mode => true,
    },
    {
      :function    => ":!~/.vim/scripts/aligner.rb '=>' -",
      :map         => 'a',
      :text        => '[a]rrow               =>',
      :visual_mode => true,
    },
    {
      :function    => ":!~/.vim/scripts/aligner.rb '(' -",
      :map         => 'b',
      :text        => '[b]racket             (',
      :visual_mode => true,
    },
    {
      :function    => ":!~/.vim/scripts/aligner.rb ')' -",
      :map         => 'xb',
      :text        => '[x]close [b]racket    )',
      :visual_mode => true,
    },
    {
      :function    => ":!~/.vim/scripts/aligner.rb '{' -",
      :map         => 'c',
      :text        => '[c]urly               {',
      :visual_mode => true,
    },
    {
      :function    => ":!~/.vim/scripts/aligner.rb '}' -",
      :map         => 'xc',
      :text        => '[x]close [c]urly      }',
      :visual_mode => true,
    },
    {
      :function    => ":!~/.vim/scripts/aligner.rb '#' -",
      :map         => 'h',
      :text        => '[h]ash                #',
      :visual_mode => true,
    },
    {
      :function    => ":!~/.vim/scripts/aligner.rb ':' -",
      :map         => 'k',
      :text        => '[k]colon                :',
      :visual_mode => true,
    }
  ]
)

CommandList::register_list(
  :name  => 'Cucumber',
  :map   =>'<Space>c',
  :map_item_with_list => true,
  :items => [
    {
      :function    => 'StepFileRecommendations()',
      :map         => 'n',
      :text        => '[n]ew step definition',
    },
    {
      :function    => ':ruby Cucumber.fetch_all_steps; VIMCucumber.check_steps_on_file',
      :map         => 'c',
      :text        => 'refresh cucumber steps and [c]heck current file',
    },
  ]
)

CommandList::register_list(
  :name  => 'Search',
  :map   =>'<Space>s',
  :map_item_with_list => true,
  :items => [
    {
      :function    => "GrepperGrep('-rin', '.', '')",
      :map         => '.',
      :text        => 'search for word case insensitive in current[.] directory',
    },
    {
      :function    => "GrepperGrep('-rin','','')",
      :map         => 'w',
      :text        => 'search for [w]ord case insensitive',
    },
    {
      :function    => "GrepperGrep('-rn','','')",
      :map         => 's',
      :text        => 'search for word case [s]ensitive',
    },
    {
      :function    => "GrepperGrepRinCmd()",
      :map         => 'g',
      :text        => '[g]rep -rin command',
    },
    {
      :function    => "GrepperGrepCmd()",
      :map         => 'c',
      :text        => 'grep [c]ommand, grep word need to be in quote',
    }
  ]
)

CommandList::register_list(
  :name  => 'Git',
  :map   =>'<Space>g',
  :map_item_with_list => true,
  :items => [
    {
      :function    => ":Gstatus",
      :map         => 's',
      :text        => 'git [s]tatus',
    },
    {
      :function    => [":NERDTreeClose", ":CMiniBufExplorer", ":Gdiff", ":TMiniBufExplorer"],
      :map         => 'd',
      :text        => 'git [d]iff file',
    },
    {
      :function    => ":call Terminal_cd_dir('git diff')",
      :map         => 'D',
      :text        => 'git [D]iff all',
    },
    {
      :function    => ":call Terminal_cd_dir('git diff --cached')",
      :map         => 'dc',
      :text        => 'git [d]iff [c]ache',
    },
    {
      :function    => ":Gblame",
      :map         => 'b',
      :text        => 'git [b]lame',
    },
    {
      :function    => ":Gcommit",
      :map         => 'c',
      :text        => 'git [c]ommit',
    },
    {
      :function    => ":Gmove",
      :map         => 'm',
      :text        => 'git [m]ove',
    },
    {
      :function    => ":Gremove",
      :map         => 'x',
      :text        => 'git [x]remove',
    },
    {
      :function    => ":Gedit",
      :map         => 'e',
      :text        => 'git [e]dit',
    },
    {
      :function    => ":Glog",
      :map         => 'o',
      :text        => 'git l[o]g',
    },
    {
      :function    => ":Git pull",
      :map         => 'u',
      :text        => 'git p[u]ll',
    },
    {
      :function    => ":Git pull && git push",
      :map         => 'p',
      :text        => 'git [p]ull and push',
    }
  ]
)

CommandList::register_list(
  :name  => 'Switch Project',
  :map   =>'<Space>;',
  :map_item_with_list => true,
  :items => [
    {
      :function    => ":call SwitchToProjectCmd('jack')",
      :map         => 'j',
      :text        => '[j]ack',
    },
    {
      :function    => ":call SwitchToProjectCmd('beehome')",
      :map         => 'b',
      :text        => '[b]eehome',
    },
    {
      :function    => ":call SwitchToProjectCmd('apartment')",
      :map         => 'a',
      :text        => '[a]partment',
    },
    {
      :function    => ":call SwitchToProjectCmd('p')",
      :map         => 'p',
      :text        => '[p]erform',
    },
    {
      :function    => ":call SwitchToProjectCmd('v')",
      :map         => 'v',
      :text        => '[v]im',
    },
    {
      :function    => ":call SwitchToPath()",
      :map         => 'f',
      :text        => '[f] switch with input',
    },
    {
      :function    => ":call CloseProject(GetCurrentProject())",
      :map         => 'w',
      :text        => '[w] close current project',
    },
  ]
)
CommandList::register_list(
  :name  => 'Rails Goto...',
  :map   =>'gr',
  :map_item_with_list => true,
  :items => [
    {
      :function    => "1R ",
      :map         => 'n',
      :text        => 'everythi[n]g',
    },
    {
      :function    => ":Econtroller",
      :map         => 'c',
      :text        => '[c]ontroller',
    },
    {
      :function    => ":Eview",
      :map         => 'v',
      :text        => '[v]iew',
    },
    {
      :function    => ":Elayout",
      :map         => 'l',
      :text        => '[l]ayout',
    },
    {
      :function    => ":Emodel",
      :map         => 'm',
      :text        => '[m]odel',
    },
    {
      :function    => ":Eenvironment",
      :map         => 'e',
      :text        => '[e]nvironment config',
    },
    {
      :function    => ":Espec",
      :map         => 's',
      :text        => '[s]spec',
    },
    {
      :function    => ":Ehelper",
      :map         => 'h',
      :text        => '[h]elper',
    },
    {
      :function    => ":Estylesheet",
      :map         => 'y',
      :text        => 'st[y]lesheet',
    },
    {
      :function    => ":Emigration",
      :map         => 'i',
      :text        => 'm[i]gration',
    },
    {
      :function    => ":Etask",
      :map         => 't',
      :text        => '[t]ask',
    },
    {
      :function    => ":Ejavascript",
      :map         => 'j',
      :text        => '[j]avascript',
    },
    {
      :function    => ":Efixtures",
      :map         => 'f',
      :text        => '[f]fixtures',
    },
    {
      :function    => ":Elocale",
      :map         => 'o',
      :text        => 'l[o]cale',
    },
  ]
)

CommandList::register_list(
  :name  => 'Delete ...',
  :map   =>'<Space>d',
  :map_item_with_list => true,
  :items => [
    {
      :function    => "DeleleteInnerMostSurround()",
      :map         => 's',
      :text        => 'inner most [s]urround',
    },
  ]
)
