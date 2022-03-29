package options;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;

using StringTools;

class VisualsUISubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Visuals';
		rpcTitle = 'Visuals Settings Menu'; //for Discord Rich Presence

		var option:Option = new Option('Score Type:',
			"What should the be like?",
                        'scoreType',
                        'string',
                        'Kade Engine',
                        ['Psych Engine', 'Kade Engine', 'Disabled']);
                addOption(option);
		
		var option:Option = new Option('Play Hit Sounds',
                        'If checked enables hit sounds.',
                        'playHitSounds',
                        'bool',
                        false);
                addOption(option);		
	
		var option:Option = new Option('Icon Boping',
                        'If checked enables icon boping.',
                        'iconBoping',
                        'bool',
                        false);
                addOption(option);

		var option:Option = new Option('HP Bar Smoothness',
                        "Pretty self explanatory, isn't it?",
                        'smoothness',
                        'int',
                        7);
                addOption(option);
                option.minValue = 4;
                option.maxValue = 12;
                option.displayFormat = '%v';
                option.onChange = onChangeFramerate;

		var option:Option = new Option('KE Timebar',
                        'If checked, uses the KE timebar.',
                        'keTimeBar',
                        'bool',
                        false);
                addOption(option);
		
		super();
	}
}
