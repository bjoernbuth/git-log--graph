import colors from "./colors.coffee"

``###*
# @typedef {{
#	name: string
#	id: string
#	color?: colors[number]
#	type: "tag" | "stash" | "branch"
# }} GitRef
# @typedef {GitRef & {
#	type: "branch"
#	remote_name?: string
#	tracking_remote_name?: string
#	virtual?: boolean
# }} Branch
#
# TODO: typedef comment doesn't work? Same below
# Chars as they are returned from git, with proper branch association
# @typedef {{
#	char: string
#	branch: Branch | null
# }[]} Vis
#
# Vis chars are transformed by us into vis lines (as in: a svg line) that have an
# x0 and an x1 "coordinate" (from / to). These coordinates will have to be mapped
# to the actual svg grid as there is no spacing here yet.
# Every commit will have at least one vis line.
# TODO: The naming of all of this is annoying, find something better
# @typedef {{
#	from: number
#	to: number
#	branch?: Branch | undefined
# }} VisLine
#
# @typedef {{
#	i: number
#	vis_lines: VisLine[]
#	branch?: Branch
#	hash: string
#	author_name: string
#	author_email: string
#	datetime?: string
#	refs: GitRef[]
#	subject: string
#	merge?: boolean
#	stats?: {
#		files_changed?: number
#		insertions?: number
#		deletions?: number
#	}
# }} Commit
#
# @typedef {{
#	value: string
#	default_active: boolean
#	active?: boolean
# }} GitOption
#
# @typedef {{
#	title: string
#	description?: string
#	immediate?: boolean
#	ignore_errors:? boolean
#	args: string
#	params?: string[]
#	options?: GitOption[]
#	icon?: string
# }} ConfigGitAction
#
# @typedef {ConfigGitAction & {
#	config_key: string
# }} GitAction
###

``###*
# To use in place of `.filter(Boolean)` for type safety with strict null checks.
# @template T
# @param value {T | undefined | null | false}
# @return {value is T}
###
export is_truthy = (value) => !!value