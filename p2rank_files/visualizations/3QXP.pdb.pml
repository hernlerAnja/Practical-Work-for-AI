
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/3QXP.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/3QXP.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [1146,1149,1151,1152,1174,339,396,1153,375,338,1143,1124,1128,1129,1134,1131,991,994,1130,1280,105,109,1173,1179,1182,116,119,121,1178,1201,1202,1203,1278,110,1275,1138,1140,992,993,1011,1025,1026,397,393,394,463,127,141,258,259,589,124,114,276,275,567,570,313,294,94,95,101,102,1265,112,1027,606,608,485,468,1334,980] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [1051,1050,632,639,640,647,648,649,656,663,1022,1027,83,84,1122,242,605,607,141,258,139,140,85,87,92,94,101,89,90,627,628,86,470,629,602,603,1029,1123,1127,1034,1024,1025,1026,1128,1129,1130] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1356,2164,1799,2165,1802,1843,1841,1842,2157,2163,2172,1808,1813,1814,1815,1835,1432,1407,1357,1393] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [249,250,575,576,577,33,1,578,580,536,516,517,518,519,25,597,35] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        